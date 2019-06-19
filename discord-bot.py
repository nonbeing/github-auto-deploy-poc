#!/usr/bin/env python3
import discord

client = discord.Client()

@client.event
async def on_ready():
    print('We have logged in as {0.user}'.format(client))

@client.event
async def on_message(message):
    if message.author == client.user:
        return

    if message.content.startswith('$hello'):
        await message.channel.send('Hello!')

    if message.content.startswith('ping'):
        await message.channel.send('pong!')

client.run('NTkwMTIwNzA5MjI5OTAzODcy.XQdnMQ.2iqb6oRpUSRj6pmwbl4eAqjrm_Q')
