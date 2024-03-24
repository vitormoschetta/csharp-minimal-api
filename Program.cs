var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Ok");

app.MapGet("/welcome", async (string? name) => {
    if (string.IsNullOrEmpty(name))
    {
        name = "Guest";
    }
    
    return await Task.FromResult($"Welcome {name}");
});

app.Run();
