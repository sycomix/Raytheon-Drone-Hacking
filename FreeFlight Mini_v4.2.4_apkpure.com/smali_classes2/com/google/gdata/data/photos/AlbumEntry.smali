.class public Lcom/google/gdata/data/photos/AlbumEntry;
.super Lcom/google/gdata/data/photos/GphotoEntry;
.source "AlbumEntry.java"

# interfaces
.implements Lcom/google/gdata/data/photos/AtomData;
.implements Lcom/google/gdata/data/photos/AlbumData;


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/photos/2007#album"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/photos/GphotoEntry",
        "<",
        "Lcom/google/gdata/data/photos/AlbumEntry;",
        ">;",
        "Lcom/google/gdata/data/photos/AtomData;",
        "Lcom/google/gdata/data/photos/AlbumData;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/photos/2007#album"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/photos/2007#album"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/AlbumEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/gdata/data/photos/GphotoEntry;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/photos/AlbumEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/GphotoEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 84
    return-void
.end method


# virtual methods
.method public clearGeoBoundingBox()V
    .locals 0

    .prologue
    .line 917
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->clearBox(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 918
    return-void
.end method

.method public clearPoint()V
    .locals 0

    .prologue
    .line 913
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->clearPoint(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 914
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v4, 0x0

    .line 88
    const-class v0, Lcom/google/gdata/data/photos/AlbumEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/photos/GphotoEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 92
    const-class v0, Lcom/google/gdata/data/photos/AlbumEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 93
    const-class v0, Lcom/google/gdata/data/photos/AlbumEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoBytesUsed;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 94
    const-class v0, Lcom/google/gdata/data/photos/AlbumEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 95
    const-class v7, Lcom/google/gdata/data/photos/AlbumEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gphoto"

    const-string v5, "http://schemas.google.com/photos/2007"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "commentingEnabled"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 99
    const-class v0, Lcom/google/gdata/data/photos/AlbumEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 100
    const-class v7, Lcom/google/gdata/data/photos/AlbumEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/geo/impl/W3CPoint;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "geo"

    const-string v5, "http://www.w3.org/2003/01/geo/wgs84_pos#"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Point"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 104
    new-instance v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/W3CPoint;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/W3CPoint;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 105
    const-class v7, Lcom/google/gdata/data/photos/AlbumEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/geo/impl/GeoRssBox;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "georss"

    const-string v5, "http://www.georss.org/georss"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "box"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 108
    const-class v7, Lcom/google/gdata/data/photos/AlbumEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "georss"

    const-string v5, "http://www.georss.org/georss"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "point"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 111
    const-class v7, Lcom/google/gdata/data/photos/AlbumEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "georss"

    const-string v5, "http://www.georss.org/georss"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "where"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 114
    new-instance v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 115
    const-class v7, Lcom/google/gdata/data/photos/AlbumEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gml"

    const-string v5, "http://www.opengis.net/gml"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Envelope"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 118
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/GmlEnvelope;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 119
    const-class v7, Lcom/google/gdata/data/photos/AlbumEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/geo/impl/GmlPoint;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gml"

    const-string v5, "http://www.opengis.net/gml"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Point"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 122
    new-instance v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-direct {v0}, Lcom/google/gdata/data/geo/impl/GmlPoint;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/geo/impl/GmlPoint;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 123
    const-class v0, Lcom/google/gdata/data/photos/AlbumEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoLocation;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 124
    const-class v7, Lcom/google/gdata/data/photos/AlbumEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "media"

    const-string v5, "http://search.yahoo.com/mrss/"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "group"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 127
    new-instance v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-direct {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 128
    const-class v0, Lcom/google/gdata/data/photos/AlbumEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 129
    const-class v0, Lcom/google/gdata/data/photos/AlbumEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 130
    const-class v0, Lcom/google/gdata/data/photos/AlbumEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoPhotosLeft;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 131
    const-class v0, Lcom/google/gdata/data/photos/AlbumEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoPhotosUsed;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 132
    const-class v0, Lcom/google/gdata/data/photos/AlbumEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method public getAccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getAccessExt()Lcom/google/gdata/data/photos/GphotoAccess;

    move-result-object v0

    .line 744
    .local v0, "access":Lcom/google/gdata/data/photos/GphotoAccess;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoAccess;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAccessExt()Lcom/google/gdata/data/photos/GphotoAccess;
    .locals 1

    .prologue
    .line 141
    const-class v0, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoAccess;

    return-object v0
.end method

.method public getBytesUsed()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getBytesUsedExt()Lcom/google/gdata/data/photos/GphotoBytesUsed;

    move-result-object v0

    .line 749
    .local v0, "bytesUsed":Lcom/google/gdata/data/photos/GphotoBytesUsed;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoBytesUsed;->getValue()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getBytesUsedExt()Lcom/google/gdata/data/photos/GphotoBytesUsed;
    .locals 1

    .prologue
    .line 172
    const-class v0, Lcom/google/gdata/data/photos/GphotoBytesUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoBytesUsed;

    return-object v0
.end method

.method public getCommentCount()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getCommentCountExt()Lcom/google/gdata/data/photos/GphotoCommentCount;

    move-result-object v0

    .line 754
    .local v0, "commentCount":Lcom/google/gdata/data/photos/GphotoCommentCount;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoCommentCount;->getValue()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCommentCountExt()Lcom/google/gdata/data/photos/GphotoCommentCount;
    .locals 1

    .prologue
    .line 204
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    return-object v0
.end method

.method public getCommentsEnabled()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getCommentsEnabledExt()Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    move-result-object v0

    .line 759
    .local v0, "commentsEnabled":Lcom/google/gdata/data/photos/GphotoCommentsEnabled;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public getCommentsEnabledExt()Lcom/google/gdata/data/photos/GphotoCommentsEnabled;
    .locals 1

    .prologue
    .line 238
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getDateExt()Lcom/google/gdata/data/photos/GphotoTimestamp;

    move-result-object v0

    .line 764
    .local v0, "date":Lcom/google/gdata/data/photos/GphotoTimestamp;
    if-nez v0, :cond_0

    .line 765
    const/4 v1, 0x0

    .line 767
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoTimestamp;->getValue()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getDateExt()Lcom/google/gdata/data/photos/GphotoTimestamp;
    .locals 1

    .prologue
    .line 273
    const-class v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    return-object v0
.end method

.method public varargs getFeed([Ljava/lang/String;)Lcom/google/gdata/data/photos/AlbumFeed;
    .locals 1
    .param p1, "kinds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 739
    const-class v0, Lcom/google/gdata/data/photos/AlbumFeed;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->getFeed(Ljava/lang/Class;[Ljava/lang/String;)Lcom/google/gdata/data/photos/GphotoFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/AlbumFeed;

    return-object v0
.end method

.method public getGeoBoundingBox()Lcom/google/gdata/data/geo/Box;
    .locals 1

    .prologue
    .line 909
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->getBox(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Box;

    move-result-object v0

    return-object v0
.end method

.method public getGeoLocation()Lcom/google/gdata/data/geo/Point;
    .locals 1

    .prologue
    .line 889
    invoke-static {p0}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->getPoint(Lcom/google/gdata/data/ExtensionPoint;)Lcom/google/gdata/data/geo/Point;

    move-result-object v0

    return-object v0
.end method

.method public getGeoPoint()Lcom/google/gdata/data/geo/impl/W3CPoint;
    .locals 1

    .prologue
    .line 304
    const-class v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    return-object v0
.end method

.method public getGeoRssBox()Lcom/google/gdata/data/geo/impl/GeoRssBox;
    .locals 1

    .prologue
    .line 335
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssBox;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GeoRssBox;

    return-object v0
.end method

.method public getGeoRssPoint()Lcom/google/gdata/data/geo/impl/GeoRssPoint;
    .locals 1

    .prologue
    .line 367
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    return-object v0
.end method

.method public getGeoRssWhere()Lcom/google/gdata/data/geo/impl/GeoRssWhere;
    .locals 1

    .prologue
    .line 399
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    return-object v0
.end method

.method public getGmlEnvelope()Lcom/google/gdata/data/geo/impl/GmlEnvelope;
    .locals 1

    .prologue
    .line 431
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    return-object v0
.end method

.method public getGmlPoint()Lcom/google/gdata/data/geo/impl/GmlPoint;
    .locals 1

    .prologue
    .line 463
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getLocationExt()Lcom/google/gdata/data/photos/GphotoLocation;

    move-result-object v0

    .line 772
    .local v0, "location":Lcom/google/gdata/data/photos/GphotoLocation;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoLocation;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLocationExt()Lcom/google/gdata/data/photos/GphotoLocation;
    .locals 1

    .prologue
    .line 494
    const-class v0, Lcom/google/gdata/data/photos/GphotoLocation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoLocation;

    return-object v0
.end method

.method public getMediaCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 922
    .local v0, "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    if-nez v0, :cond_0

    .line 923
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 925
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCategories()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaContents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 930
    .local v0, "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    if-nez v0, :cond_0

    .line 931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 934
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getContents()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaCredits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCredit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 939
    .local v0, "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    if-nez v0, :cond_0

    .line 940
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 943
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getCredits()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;
    .locals 1

    .prologue
    .line 526
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    return-object v0
.end method

.method public getMediaKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;
    .locals 2

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 948
    .local v0, "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    if-nez v0, :cond_0

    .line 949
    const/4 v1, 0x0

    .line 951
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaThumbnails()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaThumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 956
    .local v0, "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    if-nez v0, :cond_0

    .line 957
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 960
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->getThumbnails()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getNameExt()Lcom/google/gdata/data/photos/GphotoName;

    move-result-object v0

    .line 777
    .local v0, "name":Lcom/google/gdata/data/photos/GphotoName;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoName;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNameExt()Lcom/google/gdata/data/photos/GphotoName;
    .locals 1

    .prologue
    .line 558
    const-class v0, Lcom/google/gdata/data/photos/GphotoName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoName;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getNicknameExt()Lcom/google/gdata/data/photos/GphotoNickname;

    move-result-object v0

    .line 782
    .local v0, "nickname":Lcom/google/gdata/data/photos/GphotoNickname;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoNickname;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNicknameExt()Lcom/google/gdata/data/photos/GphotoNickname;
    .locals 1

    .prologue
    .line 589
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoNickname;

    return-object v0
.end method

.method public getPhotosLeft()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getPhotosLeftExt()Lcom/google/gdata/data/photos/GphotoPhotosLeft;

    move-result-object v0

    .line 787
    .local v0, "photosLeft":Lcom/google/gdata/data/photos/GphotoPhotosLeft;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoPhotosLeft;->getValue()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getPhotosLeftExt()Lcom/google/gdata/data/photos/GphotoPhotosLeft;
    .locals 1

    .prologue
    .line 621
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotosLeft;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoPhotosLeft;

    return-object v0
.end method

.method public getPhotosUsed()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getPhotosUsedExt()Lcom/google/gdata/data/photos/GphotoPhotosUsed;

    move-result-object v0

    .line 792
    .local v0, "photosUsed":Lcom/google/gdata/data/photos/GphotoPhotosUsed;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoPhotosUsed;->getValue()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getPhotosUsedExt()Lcom/google/gdata/data/photos/GphotoPhotosUsed;
    .locals 1

    .prologue
    .line 655
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotosUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoPhotosUsed;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getUsernameExt()Lcom/google/gdata/data/photos/GphotoUsername;

    move-result-object v0

    .line 797
    .local v0, "username":Lcom/google/gdata/data/photos/GphotoUsername;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoUsername;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUsernameExt()Lcom/google/gdata/data/photos/GphotoUsername;
    .locals 1

    .prologue
    .line 689
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoUsername;

    return-object v0
.end method

.method public hasAccessExt()Z
    .locals 1

    .prologue
    .line 163
    const-class v0, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasBytesUsedExt()Z
    .locals 1

    .prologue
    .line 195
    const-class v0, Lcom/google/gdata/data/photos/GphotoBytesUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCommentCountExt()Z
    .locals 1

    .prologue
    .line 227
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCommentsEnabledExt()Z
    .locals 1

    .prologue
    .line 264
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDateExt()Z
    .locals 1

    .prologue
    .line 295
    const-class v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGeoPoint()Z
    .locals 1

    .prologue
    .line 326
    const-class v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGeoRssBox()Z
    .locals 1

    .prologue
    .line 358
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssBox;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGeoRssPoint()Z
    .locals 1

    .prologue
    .line 390
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGeoRssWhere()Z
    .locals 1

    .prologue
    .line 422
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGmlEnvelope()Z
    .locals 1

    .prologue
    .line 454
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGmlPoint()Z
    .locals 1

    .prologue
    .line 485
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasLocationExt()Z
    .locals 1

    .prologue
    .line 517
    const-class v0, Lcom/google/gdata/data/photos/GphotoLocation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasMediaGroup()Z
    .locals 1

    .prologue
    .line 549
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasNameExt()Z
    .locals 1

    .prologue
    .line 580
    const-class v0, Lcom/google/gdata/data/photos/GphotoName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasNicknameExt()Z
    .locals 1

    .prologue
    .line 612
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPhotosLeftExt()Z
    .locals 1

    .prologue
    .line 646
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotosLeft;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPhotosUsedExt()Z
    .locals 1

    .prologue
    .line 680
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotosUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasUsernameExt()Z
    .locals 1

    .prologue
    .line 712
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setAccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "access"    # Ljava/lang/String;

    .prologue
    .line 801
    const/4 v0, 0x0

    .line 802
    .local v0, "accessExt":Lcom/google/gdata/data/photos/GphotoAccess;
    if-eqz p1, :cond_0

    .line 803
    new-instance v0, Lcom/google/gdata/data/photos/GphotoAccess;

    .end local v0    # "accessExt":Lcom/google/gdata/data/photos/GphotoAccess;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoAccess;-><init>(Ljava/lang/String;)V

    .line 805
    .restart local v0    # "accessExt":Lcom/google/gdata/data/photos/GphotoAccess;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setAccessExt(Lcom/google/gdata/data/photos/GphotoAccess;)V

    .line 806
    return-void
.end method

.method public setAccessExt(Lcom/google/gdata/data/photos/GphotoAccess;)V
    .locals 1
    .param p1, "accessExt"    # Lcom/google/gdata/data/photos/GphotoAccess;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    const-class v0, Lcom/google/gdata/data/photos/GphotoAccess;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setBytesUsed(Ljava/lang/Long;)V
    .locals 1
    .param p1, "bytesUsed"    # Ljava/lang/Long;

    .prologue
    .line 809
    const/4 v0, 0x0

    .line 810
    .local v0, "usedExt":Lcom/google/gdata/data/photos/GphotoBytesUsed;
    if-eqz p1, :cond_0

    .line 811
    new-instance v0, Lcom/google/gdata/data/photos/GphotoBytesUsed;

    .end local v0    # "usedExt":Lcom/google/gdata/data/photos/GphotoBytesUsed;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoBytesUsed;-><init>(Ljava/lang/Long;)V

    .line 813
    .restart local v0    # "usedExt":Lcom/google/gdata/data/photos/GphotoBytesUsed;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setBytesUsedExt(Lcom/google/gdata/data/photos/GphotoBytesUsed;)V

    .line 814
    return-void
.end method

.method public setBytesUsedExt(Lcom/google/gdata/data/photos/GphotoBytesUsed;)V
    .locals 1
    .param p1, "bytesUsedExt"    # Lcom/google/gdata/data/photos/GphotoBytesUsed;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    const-class v0, Lcom/google/gdata/data/photos/GphotoBytesUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setCommentCount(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "commentCount"    # Ljava/lang/Integer;

    .prologue
    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "countExt":Lcom/google/gdata/data/photos/GphotoCommentCount;
    if-eqz p1, :cond_0

    .line 819
    new-instance v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    .end local v0    # "countExt":Lcom/google/gdata/data/photos/GphotoCommentCount;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoCommentCount;-><init>(Ljava/lang/Integer;)V

    .line 821
    .restart local v0    # "countExt":Lcom/google/gdata/data/photos/GphotoCommentCount;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setCommentCountExt(Lcom/google/gdata/data/photos/GphotoCommentCount;)V

    .line 822
    return-void
.end method

.method public setCommentCountExt(Lcom/google/gdata/data/photos/GphotoCommentCount;)V
    .locals 1
    .param p1, "commentCountExt"    # Lcom/google/gdata/data/photos/GphotoCommentCount;

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setCommentsEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "commentsEnabled"    # Ljava/lang/Boolean;

    .prologue
    .line 825
    const/4 v0, 0x0

    .line 826
    .local v0, "enabledExt":Lcom/google/gdata/data/photos/GphotoCommentsEnabled;
    if-eqz p1, :cond_0

    .line 827
    new-instance v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    .end local v0    # "enabledExt":Lcom/google/gdata/data/photos/GphotoCommentsEnabled;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;-><init>(Ljava/lang/Boolean;)V

    .line 829
    .restart local v0    # "enabledExt":Lcom/google/gdata/data/photos/GphotoCommentsEnabled;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setCommentsEnabledExt(Lcom/google/gdata/data/photos/GphotoCommentsEnabled;)V

    .line 830
    return-void
.end method

.method public setCommentsEnabledExt(Lcom/google/gdata/data/photos/GphotoCommentsEnabled;)V
    .locals 1
    .param p1, "commentsEnabledExt"    # Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    const-class v0, Lcom/google/gdata/data/photos/GphotoCommentsEnabled;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 833
    const/4 v0, 0x0

    .line 834
    .local v0, "dateExt":Lcom/google/gdata/data/photos/GphotoTimestamp;
    if-eqz p1, :cond_0

    .line 835
    new-instance v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    .end local v0    # "dateExt":Lcom/google/gdata/data/photos/GphotoTimestamp;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoTimestamp;-><init>(Ljava/util/Date;)V

    .line 837
    .restart local v0    # "dateExt":Lcom/google/gdata/data/photos/GphotoTimestamp;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setDateExt(Lcom/google/gdata/data/photos/GphotoTimestamp;)V

    .line 838
    return-void
.end method

.method public setDateExt(Lcom/google/gdata/data/photos/GphotoTimestamp;)V
    .locals 1
    .param p1, "dateExt"    # Lcom/google/gdata/data/photos/GphotoTimestamp;

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    const-class v0, Lcom/google/gdata/data/photos/GphotoTimestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V
    .locals 0
    .param p1, "boundingBox"    # Lcom/google/gdata/data/geo/Box;

    .prologue
    .line 905
    invoke-static {p0, p1}, Lcom/google/gdata/data/geo/impl/BoxDataImpl;->setBox(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/geo/Box;)V

    .line 906
    return-void
.end method

.method public setGeoBoundingBox(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V
    .locals 1
    .param p1, "lowerLeft"    # Lcom/google/gdata/data/geo/Point;
    .param p2, "upperRight"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 901
    new-instance v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>(Lcom/google/gdata/data/geo/Point;Lcom/google/gdata/data/geo/Point;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setGeoBoundingBox(Lcom/google/gdata/data/geo/Box;)V

    .line 902
    return-void
.end method

.method public setGeoLocation(Lcom/google/gdata/data/geo/Point;)V
    .locals 0
    .param p1, "point"    # Lcom/google/gdata/data/geo/Point;

    .prologue
    .line 897
    invoke-static {p0, p1}, Lcom/google/gdata/data/geo/impl/PointDataImpl;->setPoint(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/geo/Point;)V

    .line 898
    return-void
.end method

.method public setGeoLocation(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1, "lat"    # Ljava/lang/Double;
    .param p2, "lon"    # Ljava/lang/Double;

    .prologue
    .line 893
    new-instance v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/data/geo/impl/GeoRssWhere;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setGeoLocation(Lcom/google/gdata/data/geo/Point;)V

    .line 894
    return-void
.end method

.method public setGeoPoint(Lcom/google/gdata/data/geo/impl/W3CPoint;)V
    .locals 1
    .param p1, "geoPoint"    # Lcom/google/gdata/data/geo/impl/W3CPoint;

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 314
    const-class v0, Lcom/google/gdata/data/geo/impl/W3CPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGeoRssBox(Lcom/google/gdata/data/geo/impl/GeoRssBox;)V
    .locals 1
    .param p1, "geoRssBox"    # Lcom/google/gdata/data/geo/impl/GeoRssBox;

    .prologue
    .line 345
    if-nez p1, :cond_0

    .line 346
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssBox;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGeoRssPoint(Lcom/google/gdata/data/geo/impl/GeoRssPoint;)V
    .locals 1
    .param p1, "geoRssPoint"    # Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    .prologue
    .line 377
    if-nez p1, :cond_0

    .line 378
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGeoRssWhere(Lcom/google/gdata/data/geo/impl/GeoRssWhere;)V
    .locals 1
    .param p1, "geoRssWhere"    # Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    const-class v0, Lcom/google/gdata/data/geo/impl/GeoRssWhere;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGmlEnvelope(Lcom/google/gdata/data/geo/impl/GmlEnvelope;)V
    .locals 1
    .param p1, "gmlEnvelope"    # Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 442
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlEnvelope;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 446
    :goto_0
    return-void

    .line 444
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGmlPoint(Lcom/google/gdata/data/geo/impl/GmlPoint;)V
    .locals 1
    .param p1, "gmlPoint"    # Lcom/google/gdata/data/geo/impl/GmlPoint;

    .prologue
    .line 472
    if-nez p1, :cond_0

    .line 473
    const-class v0, Lcom/google/gdata/data/geo/impl/GmlPoint;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V
    .locals 1
    .param p1, "keywords"    # Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/AlbumEntry;->getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;

    move-result-object v0

    .line 965
    .local v0, "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    if-nez v0, :cond_0

    .line 966
    new-instance v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    .end local v0    # "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    invoke-direct {v0}, Lcom/google/gdata/data/media/mediarss/MediaGroup;-><init>()V

    .line 967
    .restart local v0    # "group":Lcom/google/gdata/data/media/mediarss/MediaGroup;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setMediaGroup(Lcom/google/gdata/data/media/mediarss/MediaGroup;)V

    .line 969
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/media/mediarss/MediaGroup;->setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V

    .line 970
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 841
    const/4 v0, 0x0

    .line 842
    .local v0, "locExt":Lcom/google/gdata/data/photos/GphotoLocation;
    if-eqz p1, :cond_0

    .line 843
    new-instance v0, Lcom/google/gdata/data/photos/GphotoLocation;

    .end local v0    # "locExt":Lcom/google/gdata/data/photos/GphotoLocation;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoLocation;-><init>(Ljava/lang/String;)V

    .line 845
    .restart local v0    # "locExt":Lcom/google/gdata/data/photos/GphotoLocation;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setLocationExt(Lcom/google/gdata/data/photos/GphotoLocation;)V

    .line 846
    return-void
.end method

.method public setLocationExt(Lcom/google/gdata/data/photos/GphotoLocation;)V
    .locals 1
    .param p1, "locationExt"    # Lcom/google/gdata/data/photos/GphotoLocation;

    .prologue
    .line 504
    if-nez p1, :cond_0

    .line 505
    const-class v0, Lcom/google/gdata/data/photos/GphotoLocation;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setMediaGroup(Lcom/google/gdata/data/media/mediarss/MediaGroup;)V
    .locals 1
    .param p1, "mediaGroup"    # Lcom/google/gdata/data/media/mediarss/MediaGroup;

    .prologue
    .line 536
    if-nez p1, :cond_0

    .line 537
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaGroup;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, "nameExt":Lcom/google/gdata/data/photos/GphotoName;
    if-eqz p1, :cond_0

    .line 851
    new-instance v0, Lcom/google/gdata/data/photos/GphotoName;

    .end local v0    # "nameExt":Lcom/google/gdata/data/photos/GphotoName;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoName;-><init>(Ljava/lang/String;)V

    .line 853
    .restart local v0    # "nameExt":Lcom/google/gdata/data/photos/GphotoName;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setNameExt(Lcom/google/gdata/data/photos/GphotoName;)V

    .line 854
    return-void
.end method

.method public setNameExt(Lcom/google/gdata/data/photos/GphotoName;)V
    .locals 1
    .param p1, "nameExt"    # Lcom/google/gdata/data/photos/GphotoName;

    .prologue
    .line 567
    if-nez p1, :cond_0

    .line 568
    const-class v0, Lcom/google/gdata/data/photos/GphotoName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 1
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 857
    const/4 v0, 0x0

    .line 858
    .local v0, "nicknameExt":Lcom/google/gdata/data/photos/GphotoNickname;
    if-eqz p1, :cond_0

    .line 859
    new-instance v0, Lcom/google/gdata/data/photos/GphotoNickname;

    .end local v0    # "nicknameExt":Lcom/google/gdata/data/photos/GphotoNickname;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoNickname;-><init>(Ljava/lang/String;)V

    .line 861
    .restart local v0    # "nicknameExt":Lcom/google/gdata/data/photos/GphotoNickname;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setNicknameExt(Lcom/google/gdata/data/photos/GphotoNickname;)V

    .line 862
    return-void
.end method

.method public setNicknameExt(Lcom/google/gdata/data/photos/GphotoNickname;)V
    .locals 1
    .param p1, "nicknameExt"    # Lcom/google/gdata/data/photos/GphotoNickname;

    .prologue
    .line 599
    if-nez p1, :cond_0

    .line 600
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPhotosLeft(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "photosLeft"    # Ljava/lang/Integer;

    .prologue
    .line 865
    const/4 v0, 0x0

    .line 866
    .local v0, "leftExt":Lcom/google/gdata/data/photos/GphotoPhotosLeft;
    if-eqz p1, :cond_0

    .line 867
    new-instance v0, Lcom/google/gdata/data/photos/GphotoPhotosLeft;

    .end local v0    # "leftExt":Lcom/google/gdata/data/photos/GphotoPhotosLeft;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoPhotosLeft;-><init>(Ljava/lang/Integer;)V

    .line 869
    .restart local v0    # "leftExt":Lcom/google/gdata/data/photos/GphotoPhotosLeft;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setPhotosLeftExt(Lcom/google/gdata/data/photos/GphotoPhotosLeft;)V

    .line 870
    return-void
.end method

.method public setPhotosLeftExt(Lcom/google/gdata/data/photos/GphotoPhotosLeft;)V
    .locals 1
    .param p1, "photosLeftExt"    # Lcom/google/gdata/data/photos/GphotoPhotosLeft;

    .prologue
    .line 631
    if-nez p1, :cond_0

    .line 632
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotosLeft;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 636
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPhotosUsed(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "photosUsed"    # Ljava/lang/Integer;

    .prologue
    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, "usedExt":Lcom/google/gdata/data/photos/GphotoPhotosUsed;
    if-eqz p1, :cond_0

    .line 875
    new-instance v0, Lcom/google/gdata/data/photos/GphotoPhotosUsed;

    .end local v0    # "usedExt":Lcom/google/gdata/data/photos/GphotoPhotosUsed;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoPhotosUsed;-><init>(Ljava/lang/Integer;)V

    .line 877
    .restart local v0    # "usedExt":Lcom/google/gdata/data/photos/GphotoPhotosUsed;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setPhotosUsedExt(Lcom/google/gdata/data/photos/GphotoPhotosUsed;)V

    .line 878
    return-void
.end method

.method public setPhotosUsedExt(Lcom/google/gdata/data/photos/GphotoPhotosUsed;)V
    .locals 1
    .param p1, "photosUsedExt"    # Lcom/google/gdata/data/photos/GphotoPhotosUsed;

    .prologue
    .line 665
    if-nez p1, :cond_0

    .line 666
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotosUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 881
    const/4 v0, 0x0

    .line 882
    .local v0, "usernameExt":Lcom/google/gdata/data/photos/GphotoUsername;
    if-eqz p1, :cond_0

    .line 883
    new-instance v0, Lcom/google/gdata/data/photos/GphotoUsername;

    .end local v0    # "usernameExt":Lcom/google/gdata/data/photos/GphotoUsername;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoUsername;-><init>(Ljava/lang/String;)V

    .line 885
    .restart local v0    # "usernameExt":Lcom/google/gdata/data/photos/GphotoUsername;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->setUsernameExt(Lcom/google/gdata/data/photos/GphotoUsername;)V

    .line 886
    return-void
.end method

.method public setUsernameExt(Lcom/google/gdata/data/photos/GphotoUsername;)V
    .locals 1
    .param p1, "usernameExt"    # Lcom/google/gdata/data/photos/GphotoUsername;

    .prologue
    .line 699
    if-nez p1, :cond_0

    .line 700
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/AlbumEntry;->removeExtension(Ljava/lang/Class;)V

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/AlbumEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{AlbumEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 717
    return-void
.end method
