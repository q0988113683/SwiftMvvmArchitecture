//
//  Hot.swift
//  RedditQuestion
//
//  Created by Jhuo Yu cheng on 2019/11/28.
//  Copyright © 2019 Jhuo Yu cheng. All rights reserved.
//
import Foundation
// MARK: - Welcome
struct Hot: Codable {
    let kind: String
    let data: HotData
}
// MARK: - WelcomeData
struct HotData: Codable {
    let modhash: String
    let dist: Int
    var children: [Child]
    var after: String?
    var before: String?
}
// MARK: - Child
struct Child: Codable {
    let kind: String
    var data: ChildData
}
// MARK: - ChildData
struct ChildData: Codable {
    let approvedAtUTC: String?
    let subreddit, selftext, authorFullname: String
    let saved: Bool
    let modReasonTitle: String?
    let gilded: Int
    let clicked: Bool
    let title: String
    let linkFlairRichtext: [JSONAny]
    let subredditNamePrefixed: String
    let hidden: Bool
    let pwls: Int?
    let linkFlairCSSClass: String?
    let downs: Int
    let thumbnailHeight: Int?
    let hideScore: Bool
    let name: String
    let quarantine: Bool
    let linkFlairTextColor: String
    let authorFlairBackgroundColor: String?
    let subredditType: String
    let ups, totalAwardsReceived: Int
    let mediaEmbed: MediaEmbed
    let thumbnailWidth: Int?
    let authorFlairTemplateID: String?
    let isOriginalContent: Bool
    let userReports: [JSONAny]
    let secureMedia: Media?
    let isRedditMediaDomain, isMeta: Bool
    let category: String?
    let secureMediaEmbed: MediaEmbed
    let linkFlairText: String?
    let canModPost: Bool
    let score: Int
    let approvedBy: String?
    let thumbnail: String
    let edited: Edited
    let authorFlairCSSClass: String?
    let stewardReports, authorFlairRichtext: [JSONAny]
    let gildings: Gildings
    let contentCategories: [String]?
    let isSelf: Bool
    let modNote: String?
    let created: Int
    let linkFlairType: String
    let wls: Int?
    let bannedBy: String?
    let authorFlairType, domain: String
    let allowLiveComments: Bool
    let selftextHTML: String?
    let likes, suggestedSort, bannedAtUTC, viewCount: String?
    let archived, noFollow, isCrosspostable, pinned: Bool
    let over18: Bool
    let allAwardings, awarders: [JSONAny]
    let mediaOnly, canGild, spoiler, locked: Bool
    let authorFlairText: String?
    let visited: Bool
    let removedBy, numReports, distinguished: String?
    let subredditID: String
    let modReasonBy, removalReason: String?
    let linkFlairBackgroundColor, id: String
    let isRobotIndexable: Bool
    let reportReasons: String?
    let author: String
    let discussionType: String?
    let numComments: Int
    let sendReplies: Bool
    let whitelistStatus: String?
    let contestMode: Bool
    let modReports: [JSONAny]
    let authorPatreonFlair: Bool
    let authorFlairTextColor: String?
    let permalink, parentWhitelistStatus: String?
    let stickied: Bool
    let url: String?
    let subredditSubscribers, createdUTC, numCrossposts: Int?
    let media: Media?
    let isVideo: Bool
    let postHint: String?
    let preview: Preview?

    enum CodingKeys: String, CodingKey {
        case approvedAtUTC = "approved_at_utc"
        case subreddit, selftext
        case authorFullname = "author_fullname"
        case saved
        case modReasonTitle = "mod_reason_title"
        case gilded, clicked, title
        case linkFlairRichtext = "link_flair_richtext"
        case subredditNamePrefixed = "subreddit_name_prefixed"
        case hidden, pwls
        case linkFlairCSSClass = "link_flair_css_class"
        case downs
        case thumbnailHeight = "thumbnail_height"
        case hideScore = "hide_score"
        case name, quarantine
        case linkFlairTextColor = "link_flair_text_color"
        case authorFlairBackgroundColor = "author_flair_background_color"
        case subredditType = "subreddit_type"
        case ups
        case totalAwardsReceived = "total_awards_received"
        case mediaEmbed = "media_embed"
        case thumbnailWidth = "thumbnail_width"
        case authorFlairTemplateID = "author_flair_template_id"
        case isOriginalContent = "is_original_content"
        case userReports = "user_reports"
        case secureMedia = "secure_media"
        case isRedditMediaDomain = "is_reddit_media_domain"
        case isMeta = "is_meta"
        case category
        case secureMediaEmbed = "secure_media_embed"
        case linkFlairText = "link_flair_text"
        case canModPost = "can_mod_post"
        case score
        case approvedBy = "approved_by"
        case thumbnail, edited
        case authorFlairCSSClass = "author_flair_css_class"
        case stewardReports = "steward_reports"
        case authorFlairRichtext = "author_flair_richtext"
        case gildings
        case contentCategories = "content_categories"
        case isSelf = "is_self"
        case modNote = "mod_note"
        case created
        case linkFlairType = "link_flair_type"
        case wls
        case bannedBy = "banned_by"
        case authorFlairType = "author_flair_type"
        case domain
        case allowLiveComments = "allow_live_comments"
        case selftextHTML = "selftext_html"
        case likes
        case suggestedSort = "suggested_sort"
        case bannedAtUTC = "banned_at_utc"
        case viewCount = "view_count"
        case archived
        case noFollow = "no_follow"
        case isCrosspostable = "is_crosspostable"
        case pinned
        case over18 = "over_18"
        case allAwardings = "all_awardings"
        case awarders
        case mediaOnly = "media_only"
        case canGild = "can_gild"
        case spoiler, locked
        case authorFlairText = "author_flair_text"
        case visited
        case removedBy = "removed_by"
        case numReports = "num_reports"
        case distinguished
        case subredditID = "subreddit_id"
        case modReasonBy = "mod_reason_by"
        case removalReason = "removal_reason"
        case linkFlairBackgroundColor = "link_flair_background_color"
        case id
        case isRobotIndexable = "is_robot_indexable"
        case reportReasons = "report_reasons"
        case author
        case discussionType = "discussion_type"
        case numComments = "num_comments"
        case sendReplies = "send_replies"
        case whitelistStatus = "whitelist_status"
        case contestMode = "contest_mode"
        case modReports = "mod_reports"
        case authorPatreonFlair = "author_patreon_flair"
        case authorFlairTextColor = "author_flair_text_color"
        case permalink
        case parentWhitelistStatus = "parent_whitelist_status"
        case stickied, url
        case subredditSubscribers = "subreddit_subscribers"
        case createdUTC = "created_utc"
        case numCrossposts = "num_crossposts"
        case media
        case isVideo = "is_video"
        case postHint = "post_hint"
        case preview
    }
}

enum Edited: Codable {
    case bool(Bool)
    case integer(Int)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let xItem = try? container.decode(Bool.self) {
            self = .bool(xItem)
            return
        }
        if let xInt = try? container.decode(Int.self) {
            self = .integer(xInt)
            return
        }
        throw DecodingError.typeMismatch(Edited.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Edited"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .bool(let xBool):
            try container.encode(xBool)
        case .integer(let xInteger):
            try container.encode(xInteger)
        }
    }
}

// MARK: - Gildings
struct Gildings: Codable {
}

// MARK: - Media
struct Media: Codable {
    let type: String?
    let oembed: Oembed?
}

// MARK: - Oembed
struct Oembed: Codable {
    let providerURL: String?
    let version, title, type: String?
    let thumbnailWidth, height, width: Int?
    let html, authorName, providerName: String?
    let thumbnailURL: String?
    let thumbnailHeight: Int?
    let authorURL: String?

    enum CodingKeys: String, CodingKey {
        case providerURL = "provider_url"
        case version, title, type
        case thumbnailWidth = "thumbnail_width"
        case height, width, html
        case authorName = "author_name"
        case providerName = "provider_name"
        case thumbnailURL = "thumbnail_url"
        case thumbnailHeight = "thumbnail_height"
        case authorURL = "author_url"
    }
}

// MARK: - MediaEmbed
struct MediaEmbed: Codable {
    let content: String?
    let width: Int?
    let scrolling: Bool?
    let height: Int?
    let mediaDomainURL: String?

    enum CodingKeys: String, CodingKey {
        case content, width, scrolling, height
        case mediaDomainURL = "media_domain_url"
    }
}

// MARK: - Preview
struct Preview: Codable {
    let images: [Image]
    let enabled: Bool
}

// MARK: - Image
struct Image: Codable {
    let source: Source
    let resolutions: [Source]
    let variants: Gildings
    let id: String
}

// MARK: - Source
struct Source: Codable {
    let url: String
    let width, height: Int
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
