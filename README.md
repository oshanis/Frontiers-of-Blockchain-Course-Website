# Frontiers in Blockchain Research Course Website

This is the course website for **CSCI 4962/CSCI 6962 - Frontiers of Blockchain Research** built with MkDocs and the Material theme.

## Quick Start

### Prerequisites

- Python 3.8 or higher
- `python3-venv` package (required for virtual environment)
- `python3-pip` package (for installing Python packages)

If these are not installed, you may need to install them:

```bash
# If you have sudo access:
sudo apt install python3.12-venv python3-pip

# Otherwise, contact your system administrator
```

### Installation

**Option 1: Using the setup script (Recommended)**

1. **Navigate to the project directory:**
   ```bash
   cd Frontiers-of-Blockchain-Research-Course-Website
   ```

2. **Run the setup script:**
   ```bash
   ./setup.sh
   ```

   This will:
   - Create a Python virtual environment
   - Install all required dependencies
   - Set up the local environment

3. **Serve the site locally:**
   ```bash
   ./serve.sh
   ```

   Or manually:
   ```bash
   source venv/bin/activate
   mkdocs serve
   ```

4. **View the site:**
   Open your browser and navigate to `http://127.0.0.1:8000`

**Option 2: Manual setup**

1. **Create a virtual environment:**
   ```bash
   python3 -m venv venv
   ```

2. **Activate the virtual environment:**
   ```bash
   source venv/bin/activate
   ```

3. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Serve the site:**
   ```bash
   mkdocs serve
   ```

## Building the Site

To build a production version of the site:

```bash
mkdocs build
```

The site will be generated in the `site/` directory.

## Deployment

### GitHub Pages

1. Install the `mkdocs gh-deploy` plugin (included in requirements):
   ```bash
   pip install mkdocs-material
   ```

2. Deploy to GitHub Pages:
   ```bash
   mkdocs gh-deploy
   ```

This will build the site and push it to the `gh-pages` branch of your repository.

### RPI Web Server Deployment

To deploy to the RPI web server at `https://cs.rpi.edu/academics/courses/spring26/csci4962/`:

**Option 1: Automatic Deployment (Recommended)**

1. **SSH into the server** and navigate to the project directory:
   ```bash
   cd /path/to/DecentralizedAI-Course-Website
   ```

2. **Run the deploy script:**
   ```bash
   ./deploy.sh
   ```
   
   This will:
   - Build the site
   - Copy the built files from `site/` to the parent directory (`../`)
   - Preserve source files (docs/, mkdocs.yml, etc.)
   - The site will be accessible at the parent directory URL

**Option 2: Manual Deployment**

1. **Build the site:**
   ```bash
   ./build.sh
   # or manually:
   source venv/bin/activate
   mkdocs build
   ```

2. **Copy site contents to parent directory (web root):**
   ```bash
   cp -r site/* ..
   ```

3. **Verify:** Check that `index.html` is in the parent directory (`../index.html`)

**Note:** The deployment copies files to the parent directory so the site is served from the course directory level, not the project subdirectory.

### Other Platforms

The built site in the `site/` directory can be deployed to any static hosting service:
- Netlify
- Vercel
- AWS S3
- GitHub Pages
- Your own web server

## Project Structure

```
DecentralizedAI-Course-Website/
├── docs/                    # Documentation source files
│   ├── index.md            # Home page
│   ├── assignments.md      # Assignment information
│   ├── lectures.md         # Lecture schedule and topics
│   ├── contact.md          # Contact information
│   └── course-info/        # Course information pages
│       ├── overview.md     # Course overview
│       ├── schedule.md     # Class schedule
│       └── resources.md    # Course resources
├── mkdocs.yml              # MkDocs configuration
├── requirements.txt        # Python dependencies
└── README.md              # This file
```

## Customization

### Updating Course Information

Edit the relevant Markdown files in the `docs/` directory:
- Course details: `docs/course-info/overview.md`
- Schedule: `docs/course-info/schedule.md`
- Links and resources: `docs/course-info/resources.md`

### Changing the Theme

Modify the `theme` section in `mkdocs.yml` to customize colors, features, and appearance.

### Adding Pages

1. Create a new Markdown file in the `docs/` directory
2. Add it to the `nav` section in `mkdocs.yml`

## Contributing

1. Make your changes
2. Test locally with `mkdocs serve`
3. Commit your changes
4. Push to the repository

## License

[Add your license information here]

## Support

For issues or questions about the website:
- Open an issue on GitHub
- Contact the course instructor

---

*Built with [MkDocs](https://www.mkdocs.org/) and [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)*
