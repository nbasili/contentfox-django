from django.shortcuts import render
import random


def homepage(request, token=None):
    context = {
        "trial_days": random.randrange(10, 30, 5),
        "num_integrations": random.randrange(1, 3),
        "live_token": token,
    }
    return render(request, 'home.html', context)
