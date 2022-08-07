const yaml = require('yaml');

const semverMatchRegex = /-v(\d*.*)$/;

module.exports.readVersion = function (contents) {
  const data = yaml.parse(contents);

  for(let key of Object.keys(data.services)) {
    if(data.services[key]?.image?.includes("graycore")){
      const matchedVersion = data.services[key]?.image.match(semverMatchRegex)[1];
      if(matchedVersion){
        return matchedVersion;
      }
    }
  }

  throw new Error("Unable to find version");
}

module.exports.writeVersion = function (contents, version) {
  const data = yaml.parse(contents);

  for(let key of Object.keys(data.services)) {
    if(data.services[key]?.image?.includes("graycore")){
      const matchedVersion = data.services[key]?.image.match(semverMatchRegex)[1];
      console.lo
      data.services[key].image = data.services[key].image.replace(matchedVersion, version);
    }
  }

  return yaml.stringify(data);
}
