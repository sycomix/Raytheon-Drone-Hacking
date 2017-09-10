.class public Lcom/google/gdata/data/media/mediarss/MediaRssNamespace;
.super Ljava/lang/Object;
.source "MediaRssNamespace.java"


# static fields
.field public static final NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field public static final PREFIX:Ljava/lang/String; = "media"

.field private static final STANDARD_EXTENSIONS:[Lcom/google/gdata/data/ExtensionDescription;

.field public static final URI:Ljava/lang/String; = "http://search.yahoo.com/mrss/"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "media"

    const-string v2, "http://search.yahoo.com/mrss/"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/media/mediarss/MediaRssNamespace;->NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 45
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/gdata/data/ExtensionDescription;

    const/4 v1, 0x0

    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaRating;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaTitle;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaDescription;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaKeywords;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaCategory;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaHash;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaPlayer;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaCredit;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaCopyright;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaText;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/google/gdata/data/media/mediarss/MediaRestriction;

    invoke-static {v2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/media/mediarss/MediaRssNamespace;->STANDARD_EXTENSIONS:[Lcom/google/gdata/data/ExtensionDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declareAll(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p0, "profile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 66
    sget-object v4, Lcom/google/gdata/data/media/mediarss/MediaRssNamespace;->NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p0, v4}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 69
    const-class v4, Lcom/google/gdata/data/BaseEntry;

    invoke-static {}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 70
    const-class v4, Lcom/google/gdata/data/BaseEntry;

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/google/gdata/data/media/mediarss/MediaContent;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 71
    const-class v4, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/google/gdata/data/media/mediarss/MediaContent;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 75
    sget-object v0, Lcom/google/gdata/data/media/mediarss/MediaRssNamespace;->STANDARD_EXTENSIONS:[Lcom/google/gdata/data/ExtensionDescription;

    .local v0, "arr$":[Lcom/google/gdata/data/ExtensionDescription;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 76
    .local v1, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v4, Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {p0, v4, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 77
    const-class v4, Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {p0, v4, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 78
    const-class v4, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {p0, v4, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 79
    const-class v4, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-virtual {p0, v4, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "desc":Lcom/google/gdata/data/ExtensionDescription;
    :cond_0
    return-void
.end method
