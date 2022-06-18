import os
import typing
from dataclasses import dataclass

from fastapi import FastAPI

app = FastAPI()

@dataclass
class SampleEndpointBody:
    name: str
    id: int

@app.post("/sample_endpoint")
def read_item(body: SampleEndpointBody):
    return body