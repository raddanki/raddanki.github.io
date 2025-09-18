# Raghav Addanki's Academic Website

This is a Jekyll-based academic website using the Minimal Mistakes theme, hosted on GitHub Pages.

## Local Development Setup

This repository is set up to work with both Python (via `uv`) and Jekyll (via Docker) components.

### Prerequisites

- [Docker](https://www.docker.com/) - for running Jekyll
- [uv](https://github.com/astral-sh/uv) - for Python dependencies (Jupyter notebooks)

### Quick Start

1. **Clone and navigate to the repository:**
   ```bash
   cd /Users/raddanki/Downloads/raddanki.github.io
   ```

2. **Start the development server:**
   ```bash
   ./serve.sh
   ```
   
   Or manually:
   ```bash
   # Activate Python environment
   source .venv/bin/activate
   
   # Start Jekyll with Docker
   docker compose up
   ```

3. **Access the site:**
   - Open your browser and go to `http://localhost:4000`
   - The site includes LiveReload, so changes will automatically refresh the browser

### Development Workflow

#### For Website Content (Markdown, HTML, CSS):
- Edit files in `_pages/`, `_sass/`, `_layouts/`, etc.
- Changes will automatically reload in the browser
- No need to restart the Docker container

#### For Python/Jupyter Work:
- Activate the uv environment: `source .venv/bin/activate`
- Use Jupyter notebooks in the `markdown_generator/` directory
- Run: `uv run jupyter notebook` to start Jupyter

### Project Structure

- `_pages/` - Main website pages (About, etc.)
- `_config.yml` - Main Jekyll configuration
- `_config.dev.yml` - Development overrides
- `markdown_generator/` - Python scripts and Jupyter notebooks for generating content
- `docker-compose.yml` - Docker configuration for Jekyll
- `pyproject.toml` - Python dependencies managed by uv

### Stopping the Server

Press `Ctrl+C` in the terminal where the server is running, or:

```bash
docker compose down
```

### Troubleshooting

- **Port 4000 already in use:** Stop any other Jekyll/Rails servers or change the port in `docker-compose.yml`
- **Docker issues:** Make sure Docker Desktop is running
- **Python issues:** Make sure you're in the uv environment: `source .venv/bin/activate`

### Deployment

This site is configured for GitHub Pages deployment. Push changes to the `master` branch to deploy.
