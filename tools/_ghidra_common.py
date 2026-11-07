"""Shared pyghidra helpers for the ghidra_* dump tools.

Reuses the ALREADY-ANALYZED project in ghidra_proj (analyze=False): a fresh
analysis of this kernelcache takes ~45 min, so we never re-run it.
"""
import os

os.environ.setdefault("GHIDRA_INSTALL_DIR", "/opt/ghidra")

ROOT = "/home/ivan/projects/iphone-lockdownd-fuzzer"
PROJ_LOC = os.path.join(ROOT, "ghidra_proj")

VARIANTS = {
    "stable": dict(
        proj="amfi_stable",
        binpath=os.path.join(
            ROOT, "bigdata/kernelcaches/stable/24A446__iPhone14,5/kernelcache.release.iPhone14,5"
        ),
    ),
    "beta": dict(
        proj="amfi_beta",
        binpath=os.path.join(
            ROOT, "bigdata/kernelcaches/beta/24B5089g__iPhone14,5/kernelcache.release.iPhone14,5"
        ),
    ),
}


def open_variant(variant="stable"):
    """Return a pyghidra open_program context manager for the given variant."""
    import pyghidra

    cfg = VARIANTS[variant]
    return pyghidra.open_program(
        cfg["binpath"],
        project_location=PROJ_LOC,
        project_name=cfg["proj"],
        analyze=False,
        nested_project_location=False,
    )


def get_function(flat, addr_hex):
    program = flat.getCurrentProgram()
    af = program.getAddressFactory()
    fm = program.getFunctionManager()
    addr = af.getAddress(hex(int(addr_hex, 16)) if isinstance(addr_hex, str) else hex(addr_hex))
    func = fm.getFunctionAt(addr) or fm.getFunctionContaining(addr)
    return program, func, addr


def decompile_c(program, func, timeout=180):
    from ghidra.app.decompiler import DecompInterface

    decomp = DecompInterface()
    decomp.openProgram(program)
    try:
        res = decomp.decompileFunction(func, timeout, None)
        if res.decompileCompleted():
            return res.getDecompiledFunction().getC(), None
        return None, res.getErrorMessage()
    finally:
        decomp.dispose()
