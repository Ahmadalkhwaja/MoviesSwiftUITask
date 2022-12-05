//
//  MoviesModel.swift
//  MoviesSwiftUITask
//
//  Created by User on 04/12/2022.
//

import Foundation

import Foundation

// MARK: - MoviesModel
struct MoviesModel: Codable {
    let titles: [Title]?
    let suggestions: [Suggestion]?
}

// MARK: - Suggestion
struct Suggestion: Codable {
    let summary: SuggestionSummary?
}

// MARK: - SuggestionSummary
struct SuggestionSummary: Codable {
    let entityID: String?
    let type: PurpleType?
    let id: Int?
    let name: String?
    let isTitleGroup: Bool?

    enum CodingKeys: String, CodingKey {
        case entityID = "entityId"
        case type, id, name, isTitleGroup
    }
}

enum PurpleType: String, Codable {
    case collection = "collection"
    case video = "video"
}

// MARK: - Title
struct Title: Codable {
    let availability: Availability?
    let inRemindMeList: Bool?
    let queue: Queue?
    let summary: TitleSummary?
    let jawSummary: JawSummary?
    let episodeCount: Int?
}

// MARK: - Availability
struct Availability: Codable {
    let isPlayable: Bool?
    let availabilityDate: String?
    let availabilityStartTime: Int?
}

// MARK: - JawSummary
struct JawSummary: Codable, Identifiable {
    
    let trackIDS: TrackIDS?
    let tags, cast, creators, directors: [Cast]?
    let writers, genres: [Cast]?
    let availability: Availability?
    let contextualSynopsis, currentContextualSynopsis: ContextualSynopsis?
    let maturity: Maturity?
    let id: Int?
    let type: JawSummaryType?
    let isOriginal: Bool?
    let videoID: Int?
    let requestID, userRatingRequestID: String?
    let title: String?
    let releaseYear: Int?
    let watched, hasAudioDescription: Bool?
    let synopsis, synopsisRegular: String?
    let hasSensitiveMetaData: Bool?
    let delivery: Delivery?
    let titleMaturity: TitleMaturity?
    let broadcaster: Broadcaster?
    let trailerSummary: TrailerSummary?
    let supplementalMessageIcon: SupplementalMessageIcon?
    let runtime: Int?
    let videoMerch: VideoMerch?
    let logoImage: LogoImage?
    let backgroundImage: BackgroundImage?
    let seasonAbbr: SeasonAbbr?
    let seasonCount: Int?
    let numSeasonsLabel: String?
    let episodeCount: Int?
    let episodeTitle, supplementalMessage, mostLiked: String?
    
    static func createSampleObject() -> JawSummary {
        return JawSummary(trackIDS: nil, tags: nil, cast: nil, creators: nil, directors: nil, writers: nil, genres: nil, availability: nil, contextualSynopsis: nil, currentContextualSynopsis: nil, maturity: nil, id: nil, type: nil, isOriginal: nil, videoID: nil, requestID: nil, userRatingRequestID: nil, title: nil, releaseYear: nil, watched: nil, hasAudioDescription: nil, synopsis: nil, synopsisRegular: nil, hasSensitiveMetaData: nil, delivery: nil, titleMaturity: nil, broadcaster: nil, trailerSummary: nil, supplementalMessageIcon: nil, runtime: nil, videoMerch: nil, logoImage: nil, backgroundImage: nil, seasonAbbr: nil, seasonCount: nil, numSeasonsLabel: nil, episodeCount: nil, episodeTitle: nil, supplementalMessage: nil, mostLiked: nil)
    }
    
    enum CodingKeys: String, CodingKey {
        case trackIDS = "trackIds"
        case tags, cast, creators, directors, writers, genres, availability, contextualSynopsis, currentContextualSynopsis, maturity, id, type, isOriginal
        case videoID = "videoId"
        case requestID = "requestId"
        case userRatingRequestID = "userRatingRequestId"
        case title, releaseYear, watched, hasAudioDescription, synopsis, synopsisRegular, hasSensitiveMetaData, delivery, titleMaturity, broadcaster, trailerSummary, supplementalMessageIcon, runtime, videoMerch, logoImage, backgroundImage, seasonAbbr, seasonCount, numSeasonsLabel, episodeCount, episodeTitle, supplementalMessage, mostLiked
    }
    private init(trackIDS: TrackIDS?, tags: [Cast]?, cast: [Cast]?, creators: [Cast]?, directors: [Cast]?, writers: [Cast]?, genres: [Cast]?, availability: Availability?, contextualSynopsis: ContextualSynopsis?, currentContextualSynopsis: ContextualSynopsis?, maturity: Maturity?, id: Int?, type: JawSummaryType?, isOriginal: Bool?, videoID: Int?, requestID: String?, userRatingRequestID: String?, title: String?, releaseYear: Int?, watched: Bool?, hasAudioDescription: Bool?, synopsis: String?, synopsisRegular: String?, hasSensitiveMetaData: Bool?, delivery: Delivery?, titleMaturity: TitleMaturity?, broadcaster: Broadcaster?, trailerSummary: TrailerSummary?, supplementalMessageIcon: SupplementalMessageIcon?, runtime: Int?, videoMerch: VideoMerch?, logoImage: LogoImage?, backgroundImage: BackgroundImage?, seasonAbbr: SeasonAbbr?, seasonCount: Int?, numSeasonsLabel: String?, episodeCount: Int?, episodeTitle: String?, supplementalMessage: String?, mostLiked: String?) {
        self.trackIDS = trackIDS
        self.tags = tags
        self.cast = cast
        self.creators = creators
        self.directors = directors
        self.writers = writers
        self.genres = genres
        self.availability = availability
        self.contextualSynopsis = contextualSynopsis
        self.currentContextualSynopsis = currentContextualSynopsis
        self.maturity = maturity
        self.id = id
        self.type = type
        self.isOriginal = isOriginal
        self.videoID = videoID
        self.requestID = requestID
        self.userRatingRequestID = userRatingRequestID
        self.title = title
        self.releaseYear = releaseYear
        self.watched = watched
        self.hasAudioDescription = hasAudioDescription
        self.synopsis = synopsis
        self.synopsisRegular = synopsisRegular
        self.hasSensitiveMetaData = hasSensitiveMetaData
        self.delivery = delivery
        self.titleMaturity = titleMaturity
        self.broadcaster = broadcaster
        self.trailerSummary = trailerSummary
        self.supplementalMessageIcon = supplementalMessageIcon
        self.runtime = runtime
        self.videoMerch = videoMerch
        self.logoImage = logoImage
        self.backgroundImage = backgroundImage
        self.seasonAbbr = seasonAbbr
        self.seasonCount = seasonCount
        self.numSeasonsLabel = numSeasonsLabel
        self.episodeCount = episodeCount
        self.episodeTitle = episodeTitle
        self.supplementalMessage = supplementalMessage
        self.mostLiked = mostLiked
    }
}
// MARK: - BackgroundImage
struct BackgroundImage: Codable {
    let videoID: VideoID?
    let url: String?
    let width, height: Int?
    let backgroundImageExtension: Extension?
    let size: Int?
    let focalPoint, imageKey, backgroundImageImageKey: String?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
        case url, width, height
        case backgroundImageExtension = "extension"
        case size, focalPoint, imageKey
        case backgroundImageImageKey = "image_key"
    }
}

enum Extension: String, Codable {
    case webp = "webp"
}

enum VideoID: Codable {
    case integer(Int)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(VideoID.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for VideoID"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .integer(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - Broadcaster
struct Broadcaster: Codable {
    let broadcastDate: VideoID?
}

// MARK: - Cast
struct Cast: Codable {
    let id: Int?
    let name: String?
}

// MARK: - ContextualSynopsis
struct ContextualSynopsis: Codable {
    let text, evidenceKey: String?
}

// MARK: - Delivery
struct Delivery: Codable {
    let has3D, hasHD, hasUltraHD, hasHDR: Bool?
    let hasDolbyVision, hasDolbyAtmos, has51Audio: Bool?
    let quality: Quality?
}

enum Quality: String, Codable {
    case hd = "HD"
    case sd = "SD"
}

// MARK: - LogoImage
struct LogoImage: Codable {
    let videoID: Int?
    let url: String?
    let type: LogoImageType?
    let width, height: Int?
    let logoImageExtension: Extension?
    let size: Size?
    let imageKey: String?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
        case url, type, width, height
        case logoImageExtension = "extension"
        case size, imageKey
    }
}

enum Size: String, Codable {
    case logoBrandedHorizontal = "_LOGO_BRANDED_HORIZONTAL"
}

enum LogoImageType: String, Codable {
    case logoBrandedHorizontal = "LOGO_BRANDED_HORIZONTAL"
}

// MARK: - Maturity
struct Maturity: Codable {
    let rating: Rating?
}

// MARK: - Rating
struct Rating: Codable {
    let value, maturityDescription, specificRatingReason: String?
    let maturityLevel: Int?
    let board: Board?
    let boardID, ratingID: Int?
    let reasons: [Reason]?

    enum CodingKeys: String, CodingKey {
        case value, maturityDescription, specificRatingReason, maturityLevel, board
        case boardID = "boardId"
        case ratingID = "ratingId"
        case reasons
    }
}

enum Board: String, Codable {
    case mpaa = "MPAA"
    case usTv = "US TV"
}

// MARK: - Reason
struct Reason: Codable {
    let id: Int?
    let reasonDescription: String?
}

enum SeasonAbbr: String, Codable {
    case empty = ""
    case s1 = "S1"
    case s2 = "S2"
    case v3 = "V3"
}

enum SupplementalMessageIcon: String, Codable {
    case blm = "BLM"
    case expiryMessage = "EXPIRY_MESSAGE"
    case regular = "REGULAR"
    case top10 = "TOP_10"
}

// MARK: - TitleMaturity
struct TitleMaturity: Codable {
    let level: Int?
}

// MARK: - TrackIDS
struct TrackIDS: Codable {
    let videoID, trackIDJaw, trackIDJawEpisode, trackIDJawTrailer: Int?
    let trackID: Int?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
        case trackIDJaw = "trackId_jaw"
        case trackIDJawEpisode = "trackId_jawEpisode"
        case trackIDJawTrailer = "trackId_jawTrailer"
        case trackID = "trackId"
    }
}

// MARK: - TrailerSummary
struct TrailerSummary: Codable {
    let length: Int?
}

enum JawSummaryType: String, Codable {
    case movie = "movie"
    case show = "show"
}

// MARK: - VideoMerch
struct VideoMerch: Codable {
    let videoID, id, start: Int?
    let computeID: String?

    enum CodingKeys: String, CodingKey {
        case videoID = "videoId"
        case id, start
        case computeID = "computeId"
    }
}

// MARK: - Queue
struct Queue: Codable {
    let available, inQueue: Bool?
}

// MARK: - TitleSummary
struct TitleSummary: Codable {
    let type: JawSummaryType?
    let id: Int?
    let isOriginal: Bool?
}
