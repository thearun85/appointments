# Appointment Booking
A REST api for managing appointment bookings across bank branches.

## Overview

Supports two booking channels( customer self-serve and branch) and three delivery channels (in-person, phone and video call). Branch staff shifts and activities are managed to drive slot availability.

## Tech Stack

- **Python 3.12**
- **Flask** - web framework
- **SQLAlchemy** - ORM
- **PostgreSQL** - production database
- **Docker & Docker Compose** - containerisation
- **Poetry** - dependency management

## Project Structure

```
appointments/
 |__ __init__.py
 |__ config.py			# App config and DB setup
 |__ models/			# SQLAlchemy ORM models
 |__ routes/			# Flask blueprints
 |__ services/			# Business logic
tests/
```

## Getting Started

### Prerequisites

- Python 3.12+
- [Poetry](https://python-poetry.org/docs/#installation)

### Install dependencies

```bash
poetry install
```

### Run the app

```bash
poetry run flask --app appointments run
```

## Development

### Run all checks

```bash
make check
```

### Individual commands

```bash
make fmt		# Format code
make lint 		# Lint code
make typecheck	# Typecheck with mypy
make tests		# Run tests
```

## Testing

Tests use SQLite in-memory for spped. No database setup required.

```bash
make test
```


