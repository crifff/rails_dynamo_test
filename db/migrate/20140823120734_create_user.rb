class CreateUser < ActiveRecord::Migration
  def up
    client = Aws::DynamoDB::Client.new
    client.create_table(
        attribute_definitions: [
            {
                attribute_name: "id",
                attribute_type: "S"
            }
        ],
        table_name: "users",
        key_schema: [
            {
                attribute_name: "id",
                key_type: "HASH"
            }
        ],
        provisioned_throughput: {
            read_capacity_units: 1,
            write_capacity_units: 1
        }
    )
  end

  def down
    client = Aws::DynamoDB::Client.new
    client.delete_table(
        table_name: "users"
    )
  end
end
