# junk-pack-unpack
A simple powershell utility to organize your junk files (pack) or the opposite (unpack).

---

* The script `pack.ps1` organizes your files (junk) by iterating over files (`filename.ext`) in the current directory, creates a folder (if not exists) `\.ext\` in the current directory and moves the file to `\.ext\filename.ext`, thus effectively grouping all `.ext` files in the `\.ext\` subdirectory. Handles extensionless files `filename` as well by moving them to `\EXTENSIONLESS\filename`.

* The script `unpack.ps1` does the exact opposite: it recursively iterates over files from the current directory (from where it's run) and unpacks them by moving them to current directory, then deleting the empty directories in the end.

---

Since these are native PowerShell scripts for working with the Windows FileSystem, they avoid the overhead of other scripting implementations like Python and are thus inherently the fastest for this job.

---

**Usage:**

* Copy the required script (`pack.ps1`/`unpack.ps1`) from this repo and paste it in the directory where your junk is at (or need junk at, if you're using the `unpack` script)
* Shift + Right-Click in that directory to open the context menu for it.
* Click "Open PowerShell window here" in the context menu.
* Once the powershell window opens, type `./pack.ps1` (or `unpack.ps1` if you're using the unpack script) and press Enter.
* Done!
