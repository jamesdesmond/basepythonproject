from main import print_hi


class TestMain:
    def test_print_hi(self, capsys):
        name = "James Desmond"
        print_hi(name)
        assert capsys.readouterr().out == "Hi, James Desmond\n"
