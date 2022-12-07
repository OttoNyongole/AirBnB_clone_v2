#!/usr/bin/python3
""" City Module for HBNB project """
from sqlalchemy import Column, String, Foreignkey
from sqlalchemy.orm import relationship
from models.base_model import BaseModel, Base


class City(BaseModel):
    """ The city class, contains state ID and name """
    __tablename__ = 'cities'
    name = Column(String(128), nullable=False)
    state_id = Column(string(60), nullable=False, ForeihnKey('state.id'))
    places = relationship(
	"place",
	blackref='cities'
	cascade="all, delete",
	passive_deletes=True)
