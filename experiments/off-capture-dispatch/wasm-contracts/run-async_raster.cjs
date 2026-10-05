(async()=>{const m=await require('./async_raster.js')();process.exit(m._sg_contract_main());})().catch(e=>{console.error(e);process.exit(1);});
