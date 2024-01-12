from fastapi import FastAPI
from typing import Optional
from .pokemon_data import pokemon_data  # Importar los datos de Pokémon desde el archivo pokemon_data.py

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Welcome to the Pokémon API"}

@app.get("/pokemon/{pokemon_name}")
def get_pokemon_details(pokemon_name: str):
    pokemon = pokemon_data.get(pokemon_name.lower())
    if not pokemon:
        return {"error": "Pokemon not found"}
    return pokemon

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)

