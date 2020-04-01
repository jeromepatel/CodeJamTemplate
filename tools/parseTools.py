# #region parseTools
# TODO add documentation


def convert_input(vals):
    try:
        return list(map(int, vals))
    except ValueError:
        pass
    try:
        return list(map(float, vals))
    except ValueError:
        pass
    return vals


def cin(n=None):
    k = 1 if n is None else n
    if len(cin.cached_vals) >= k:
        val = cin.cached_vals[:k]
        del cin.cached_vals[:k]
        if n is None:
            return val[0]
        return val
    else:
        v = input()
        v = v.strip().split(" ")
        cin.cached_vals += convert_input(v)
        return cin(n)


cin.cached_vals = []


# #endregion parseTools
