function coded = caesar(str, n)

coded = char(mod((str + n), 95) + 32);

end