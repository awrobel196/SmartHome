using System.Reflection;
using MediatR;
using IoTServiceWorker;
using IoTServiceWorker.Services;

IHost host = Host.CreateDefaultBuilder(args)
    .ConfigureServices(services =>
    {
        services.AddHostedService<Worker>();
        services.AddMediatR(Assembly.GetExecutingAssembly());
        services.AddTransient<ITimeScheduler, TimeScheduler>();
    })
    .Build();


await host.RunAsync();