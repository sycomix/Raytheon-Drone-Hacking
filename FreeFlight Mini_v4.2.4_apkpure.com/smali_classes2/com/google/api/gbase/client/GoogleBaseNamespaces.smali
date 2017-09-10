.class Lcom/google/api/gbase/client/GoogleBaseNamespaces;
.super Ljava/lang/Object;
.source "GoogleBaseNamespaces.java"


# static fields
.field public static final G:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

.field public static final GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

.field public static final GM_ALIAS:Ljava/lang/String; = "gm"

.field public static final GM_URI:Ljava/lang/String; = "http://base.google.com/ns-metadata/1.0"

.field public static final G_ALIAS:Ljava/lang/String; = "g"

.field public static final G_URI:Ljava/lang/String; = "http://base.google.com/ns/1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    const-string v1, "gm"

    const-string v2, "http://base.google.com/ns-metadata/1.0"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    .line 60
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    const-string v1, "g"

    const-string v2, "http://base.google.com/ns/1.0"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->G:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declareAllExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0
    .param p0, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->declareGExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 70
    invoke-static {p0}, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->declareGMExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 71
    invoke-static {p0}, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->declareMediaExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 72
    return-void
.end method

.method public static declareGExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p0, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 81
    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declareEntryExtension(Lcom/google/gdata/data/ExtensionDescription;)V

    .line 82
    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declareFeedExtension(Lcom/google/gdata/data/ExtensionDescription;)V

    .line 84
    const-class v1, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 86
    .local v0, "feedLinkExtDesc":Lcom/google/gdata/data/ExtensionDescription;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 87
    const-class v1, Lcom/google/api/gbase/client/GoogleBaseEntry;

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 88
    return-void
.end method

.method public static declareGMExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p0, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 96
    const-class v0, Lcom/google/api/gbase/client/Stats;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareEntryExtension(Ljava/lang/Class;)V

    .line 97
    const-class v0, Lcom/google/api/gbase/client/AttributeHistogram;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareEntryExtension(Ljava/lang/Class;)V

    .line 98
    const-class v0, Lcom/google/api/gbase/client/GmAttributes;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareEntryExtension(Ljava/lang/Class;)V

    .line 99
    const-class v0, Lcom/google/api/gbase/client/GmItemType;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareEntryExtension(Ljava/lang/Class;)V

    .line 100
    const-class v0, Lcom/google/gdata/data/PubControl;

    invoke-static {}, Lcom/google/api/gbase/client/GmDisapproved;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 101
    const-class v0, Lcom/google/gdata/data/PubControl;

    invoke-static {}, Lcom/google/api/gbase/client/GmPublishingPriority;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 103
    return-void
.end method

.method public static declareMediaExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p0, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 106
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseMediaEntry;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 107
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaContent;

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 108
    return-void
.end method
