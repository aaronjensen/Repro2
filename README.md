This project reproduces [Emacs bug
28512](https://debbugs.gnu.org/db/28/28512.html) outside of Emacs, demonstrating
that this is a macOS 10.13 bug.

To reproduce:

1. Run the example project.
2. Click the button on the window.
3. Make sure that the app is placed in front of another app, like a web browser.
4. Resize the window to be larger than it was.
5. Click in an area of the window that was newly created by the resize operation.

Expected behavior:

Nothing

Actual behavior:

The click event travels through the window to whatever app is behind the repro app.
