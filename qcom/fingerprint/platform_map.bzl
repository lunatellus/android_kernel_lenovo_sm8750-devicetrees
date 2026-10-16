load("@bazel_skylib//lib:sets.bzl", "sets")

_platform_map = {
    "alor": {
        "dtbo_list": [
        ],
    },
    "alor-interposer": {
        "dtbo_list": [
        ],
    },
    "art": {
        "binary_compatible_with": ["pebble", "artl", "arth", "coast"],
        "dtbo_list": [
            # keep sorted
            {"name": "art-fingerprint.dtbo"},
        ],
    },
    "arth": {
        "dtbo_list": [
        ],
    },
    "artl": {
        "dtbo_list": [
        ],
    },
    "canoe": {
        "binary_compatible_with": ["alor", "alor-interposer"],
        "dtbo_list": [
            # keep sorted
            {"name": "canoe-fingerprint.dtbo"},
        ],
    },
    "coast": {
        "dtbo_list": [
        ],
    },
    "pebble": {
        "dtbo_list": [
        ],
    },
    "sun": {
        "binary_compatible_with": ["tuna"],
        "dtbo_list": [
            # keep sorted
            {"name": "sun-fingerprint.dtbo"},
        ],
    },
    "tuna": {
        "dtbo_list": [
        ],
    },
}

def _get_dtb_lists(target, dt_overlay_supported):
    if not target in _platform_map:
        fail("{} not in device tree platform map!".format(target))

    ret = {
        "dtb_list": [],
        "dtbo_list": [],
    }

    for dtb_node in [target] + _platform_map[target].get("binary_compatible_with", []):
        ret["dtb_list"].extend(_platform_map[dtb_node].get("dtb_list", []))
        if dt_overlay_supported:
            ret["dtbo_list"].extend(_platform_map[dtb_node].get("dtbo_list", []))
        else:
            for dtb in _platform_map[dtb_node].get("dtb_list", []):
                dtb_base = dtb["name"].replace(".dtb", "")
                for dtbo in _platform_map[dtb_node].get("dtbo_list", []):
                    if not dtbo.get("apq", True) and dtb.get("apq", False):
                        continue

                    dtbo_base = dtbo["name"].replace(".dtbo", "")
                    ret["dtb_list"].append({"name": "{}-{}.dtb".format(dtb_base, dtbo_base)})

    return ret

def get_dtb_list(target, dt_overlay_supported = True):
    return [dtb["name"] for dtb in _get_dtb_lists(target, dt_overlay_supported).get("dtb_list", [])]

def get_dtbo_list(target, dt_overlay_supported = True):
    return [dtb["name"] for dtb in _get_dtb_lists(target, dt_overlay_supported).get("dtbo_list", [])]

def get_all_targets_list():
    return [t for t in _platform_map]

def get_dtbo_ids(target, dt_overlay_supported = True):
    ids = []
    for dtb_node in [target] + _platform_map[target].get("binary_compatible_with", []):
        for dtbo in _platform_map[dtb_node].get("dtbo_list", []):
            ids.append(dtbo.get("id", "0x00000000"))
    return ids
