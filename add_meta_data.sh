METADATADIR=metadata
DATADIR=/g/data1/ua8/cosima-tmp/publish/
ADDMETA=addmeta

# 0.25 degree
# Ocean data
parallel ${ADDMETA} -v -l ${METADATADIR}/global/globals -l ${METADATADIR}/ocean/oceanlist -m ${METADATADIR}/global/model_025deg.yaml {} ::: ${DATADIR}/access-om2-025/ocean/*/*.nc

# Ice data
parallel ${ADDMETA} -v -l ${METADATADIR}/global/globals -l ${METADATADIR}/ice/icelist -m ${METADATADIR}/global/model_025deg.yaml {} ::: ${DATADIR}/access-om2-025/ice/*/*.nc

exit

# 1 degree
# Ocean data
${ADDMETA} -v -l ${METADATADIR}/global/globals -l ${METADATADIR}/ocean/oceanlist -m ${METADATADIR}/global/model_1deg.yaml ${DATADIR}/access-om2/ocean/*/*.nc

# Ice data
${ADDMETA} -v -l ${METADATADIR}/global/globals -l ${METADATADIR}/ice/icelist -m ${METADATADIR}/global/model_1deg.yaml ${DATADIR}/access-om2/ice/*/*.nc

# 0.1 degree
# Ocean data
${ADDMETA} -v -l ${METADATADIR}/global/globals -l ${METADATADIR}/ocean/oceanlist -m ${METADATADIR}/global/model_01deg.yaml ${DATADIR}/access-om2-01/ocean/*/*.nc

# Ice data
${ADDMETA} -v -l ${METADATADIR}/global/globals -l ${METADATADIR}/ice/icelist -m ${METADATADIR}/global/model_01deg.yaml ${DATADIR}/access-om2-01/ice/*/*.nc

