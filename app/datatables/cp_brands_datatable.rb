class CpBrandsDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      id: { source: "Cp::Brand.id", cond: :eq },
      name: { source: "Cp::Brand.name", cond: :like },
      address: { source: "Cp::Brand.address", cond: :like },
      website: { source: "Cp::Brand.website", cond: :like },
      categories: { source: "Cp::Brand.categories", cond: :like },
    }
  end

  def data
    records.map do |record|
      {
        id: record.id,
        name: record.name,
        address: record.address,
        website: record.website,
        categories: record.categories.join(', '),
      }
    end
  end

  def get_raw_records
    Cp::Brand.all
  end

end
