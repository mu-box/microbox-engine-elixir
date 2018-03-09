# Test the runtime selection

# source the Nos framework
. /opt/nanobox/nos/common.sh

# source the nos test helper
. util/nos.sh

# source stub.sh to stub functions and binaries
. util/stub.sh

# initialize nos
nos_init

# source the ruby libraries
. ${engine_lib_dir}/elixir.sh

setup() {
  rm -rf /tmp/code
  mkdir -p /tmp/code
  nos_reset_payload
}

@test "Use default postgresql client package" {

      nos_init "$(cat <<-END
{
  "config": {
  }
}
END
)"

  postgresql_version=$(postgresql_version)

  [ "$postgresql_version" = "96" ]
}

@test "Use default version of erlang and specify version elixir" {

      nos_init "$(cat <<-END
{
  "config": {
    "postgresql_client_version": "9.5"
  }
}
END
)"

  postgresql_version=$(postgresql_version)

  [ "$postgresql_version" = "95" ]
}


