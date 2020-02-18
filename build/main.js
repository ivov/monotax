"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var fs = require("fs");
var path = require("path");
var pdfParse = require("pdf-parse");
var Parser = /** @class */ (function () {
    function Parser() {
    }
    Parser.readInvoices = function () {
        return __awaiter(this, void 0, void 0, function () {
            var filenames;
            var _this = this;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this.getFilenames()];
                    case 1:
                        filenames = _a.sent();
                        filenames.forEach(function (filename) { return _this.parseIntoInvoice(filename); });
                        return [2 /*return*/];
                }
            });
        });
    };
    Parser.getFilenames = function () {
        var dirpath = process.cwd() + "/invoices";
        return new Promise(function (resolve, reject) {
            fs.readdir(dirpath, function (error, filenames) {
                return resolve(filenames);
            });
        });
    };
    Parser.parseIntoInvoice = function (filename) {
        return __awaiter(this, void 0, void 0, function () {
            var filepath, pdfText, raw, invoiceData;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        filepath = path.join(process.cwd(), "invoices", filename);
                        return [4 /*yield*/, this.readFile(filepath)];
                    case 1:
                        pdfText = _a.sent();
                        try {
                            raw = this.extractRaw(pdfText);
                        }
                        catch (e) {
                            throw Error("\n\nPARSING FAILED AT " + filename + "\n\n");
                        }
                        invoiceData = {
                            invoiceNumber: this.parseInvoiceNumber(filename),
                            invoiceDate: this.parseInvoiceDate(raw.invoiceDate),
                            clientName: this.parseClientName(raw.clientName),
                            clientAddress: this.parseClientAddress(raw.clientAddress),
                            clientID: this.parseClientID(raw.clientID),
                            clientVatStatus: raw.clientVatStatus,
                            invoiceAmount: this.parseAmount(raw.invoiceAmount)
                        };
                        console.log(invoiceData);
                        return [2 /*return*/];
                }
            });
        });
    };
    Parser.extractRaw = function (pdfText) {
        var regexes = {
            invoiceDate: /Domicilio:\n(.{10})/,
            clientNameAndAddress: /\d{11}\n([\w\s.]*)\n([\w\sáéíóú:.,-]*)(Código|Contado)/,
            clientID: /(\w*: \d*)\n(Código|Precio Unit\.)/,
            clientVatStatus: /Monotributo\n([\w\s]*)\nExento/,
            invoiceAmount: /([\d,]*)\nSubtotal/
        };
        var rawClientNameAndAddress = pdfText.match(regexes["clientNameAndAddress"]);
        return {
            invoiceDate: pdfText.match(regexes["invoiceDate"])[1],
            clientName: rawClientNameAndAddress[1],
            clientAddress: rawClientNameAndAddress[2].replace("\n", " ") || "",
            clientID: pdfText.match(regexes["clientID"])[1],
            clientVatStatus: pdfText.match(regexes["clientVatStatus"])[1],
            invoiceAmount: pdfText.match(regexes["invoiceAmount"])[1]
        };
    };
    Parser.parseInvoiceNumber = function (filename) {
        var regexForInvoiceNumber = /_0+(\d*).pdf/;
        return filename.match(regexForInvoiceNumber)[1];
    };
    Parser.readFile = function (filepath) {
        return __awaiter(this, void 0, void 0, function () {
            var buffer, pdfContents;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        buffer = fs.readFileSync(filepath);
                        return [4 /*yield*/, pdfParse(buffer, { max: 1 })];
                    case 1:
                        pdfContents = _a.sent();
                        // console.log(pdfContents.text);
                        return [2 /*return*/, pdfContents.text];
                }
            });
        });
    };
    Parser.parseInvoiceDate = function (date) {
        var parts = date.split("/").map(function (part) { return parseInt(part); });
        return new Date(parts[2], parts[1] - 1, parts[0]);
    };
    Parser.parseClientName = function (name) {
        // correct company name
        if (name.includes("S.R.L.") || name.includes("S.A."))
            return name;
        // mistake in company name
        var wrongAbbreviations = {
            "S A": "S.A.",
            "S.A": "S.A.",
            "S R L": "S.R.L.",
            "S.R.L": "S.R.L."
        };
        for (var mistake in wrongAbbreviations) {
            if (name.includes(mistake))
                return name.replace(mistake, wrongAbbreviations[mistake]);
        }
        // not a company name
        return name;
    };
    Parser.parseClientAddress = function (address) {
        if (address === "")
            return {
                street: "",
                province: ""
            };
        // if province name is to be corrected
        var cleanPlacenames = {
            "Ciudad de Buenos Aires": "Ciudad Autónoma de Buenos Aires",
            "Buenos Aires": "Provincia de Buenos Aires"
        };
        for (var name_1 in cleanPlacenames) {
            if (address.includes(name_1)) {
                return {
                    street: address.replace(", " + name_1, "").trim(),
                    province: cleanPlacenames[name_1]
                };
            }
        }
        // if province name is to stand as is
        var provinceSection = address.match(/, (.*)$/)[1];
        return {
            street: address.replace(", " + provinceSection, "").trim(),
            province: provinceSection.trim()
        };
    };
    Parser.parseClientID = function (ID) {
        var _a = ID.split(": "), type = _a[0], number = _a[1];
        return {
            type: type,
            number: number
        };
    };
    Parser.parseAmount = function (amount) {
        return parseFloat(amount.replace(",", "."));
    };
    return Parser;
}());
Parser.readInvoices();
