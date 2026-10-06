# Calm Crunch

**Shell (Bash)** · **v0.1.0**

_File organizer that sorts files into category folders by extension_

---

## Features

- Groups images, documents, archives, audio, video, code
- Safe: only moves files, ignores directories
- Verbose report of every move

## Installation

```bash
git clone https://github.com/DevCode01/calm-crunch.git
cd calm-crunch
```

## Usage

```bash
bash calm-crunch.sh /path/to/messy-dir
```

## How it works

Sorts a messy directory into category folders (images, documents, archives, audio, video, code, scripts) by file extension. Only files matching known extensions are moved; everything else stays untouched.

## Options

- `dir` - directory to organize (default current directory)
- categories: images, documents, archives, audio, video, code, scripts

## Example

```bash
$ bash calm-crunch.sh /path/to/messy-dir
Organizing files in /path/to/messy-dir...
  photo.jpg -> images/
  note.txt -> documents/
Done.
```

## Testing

```bash
bash tests/run.sh
```

Runs the build/syntax check (interactive/random/networked output isn't asserted exactly).

## License

MIT
