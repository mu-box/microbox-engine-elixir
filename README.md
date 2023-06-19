# Elixir

This is an Elixir engine used to launch Elixir apps on [Microbox](http://microbox.cloud).

## Usage
To use the Elixir engine, specify `elixir` as your `engine` in your boxfile.yml.

```yaml
run.config:
  engine: elixir
```

## Build Process
When preparing your runtime, this engine compiles code by doing the following:

```
> mix local.hex --force
> mix local.rebar --force
> mix deps.get --force
> mix deps.compile --force
> mix compile --force
```

## Helper Scripts
This engine provides helper scripts to make managing your Elixir application easier.

### node-attach
The `node-attach` helper facilitates connecting to an Elixir node that was started with `node-start`.

```bash
node-attach
```

### node-start
The `node-start` helper ensures that nodes are started with credentials sufficient to cluster and attach to after they are running.

```bash
# Examples
node-start mix phoenix.server
node-start mix run —no-halt
```

## Configuration Options
This engine exposes configuration options through the [boxfile.yml](https://docs.microbox.cloud/boxfile/), a yaml config file used to provision and configure your app's infrastructure when using Microbox. This engine makes the following options available.

#### Overview of Boxfile Configuration Options
```yaml
run.config:
  engine.config:
    # Elixir Settings
    runtime: elixir-1.5
```

---

#### runtime
Specifies which Elixir runtime to use. The following runtimes are available:

- elixir-1.5

```yaml
run.config:
  engine.config:
    runtime: elixir-1.5
```

---

#### erlang_runtime
Specifies which Erlang runtime to use. The following runtimes are available:

- erlang-18
- erlang-19
- erlang-20

```yaml
run.config:
  engine.config:
    erlang_runtime: erlang-20
```

---

#### postgresql_client_version
Specifies what version of the PostgreSQL client to use:

NOTE: The engine will try to detect the correct version first.

- 9.3
- 9.4
- 9.5
- 9.6
- 10

```yaml
run.config:
  engine.config:
    postgresql_client_version: 9.6
```

---

## Help & Support
This is an Elixir engine provided by [Microbox](http://microbox.cloud). If you need help with this engine, you can reach out to us in the [Microbox Discord](https://discord.gg/MCDdHfy). If you are running into an issue with the engine, feel free to [create a new issue on this project](https://github.com/mu-box/microbox-engine-elixir/issues/new).
