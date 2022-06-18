import os
import typing
from dataclasses import dataclass

from fastapi import FastAPI

app = FastAPI()

@dataclass
class SampleEndpointBody:
    name: str
    id: int

@app.post("/sampleEndpoint")
def sample_endpoint(body: SampleEndpointBody):
    return body