const crypto = require('crypto');
const { ALGORITHM, JWTSECRET } = process.env;

// const algorithm = `${ALGORITHM}`;
const algorithm = 'aes-192-cbc'

const password = `${JWTSECRET}`;
// Use the async `crypto.scrypt()` instead.
const key = crypto.scryptSync(password, 'salt', 24);



// The IV is usually passed along with the ciphertext.
const iv = Buffer.alloc(16, 0); // Initialization vector.



const confirmApikey = (encrypted) => {
    const decipher = crypto.createDecipheriv(algorithm, key, iv);
    let decrypted = decipher.update(encrypted, 'hex', 'utf8');
    decrypted += decipher.final('utf8');
    console.log(decrypted);
    return decrypted;

}

// this is the function that generate the APIK

const generateApikey = (data) => {
    const cipher = crypto.createCipheriv(algorithm, key, iv);
    let encrypted = cipher.update(data, 'utf8', 'hex');
    encrypted += cipher.final('hex');
    console.log(encrypted);
    return encrypted;
}

module.exports = { confirmApikey, generateApikey }