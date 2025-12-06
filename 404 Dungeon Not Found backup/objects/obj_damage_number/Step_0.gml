// Move upwards
y += vy;

// Fade out gradually
alpha = life_time / 40; // fade out over lifetime

// Countdown lifetime
life_time -= 1;
if (life_time <= 0) {
    instance_destroy();
}