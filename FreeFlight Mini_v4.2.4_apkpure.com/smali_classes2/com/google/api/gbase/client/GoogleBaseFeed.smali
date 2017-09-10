.class public Lcom/google/api/gbase/client/GoogleBaseFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "GoogleBaseFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/api/gbase/client/GoogleBaseFeed;",
        "Lcom/google/api/gbase/client/GoogleBaseEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final googleBaseAttributesExtension:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 39
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    invoke-direct {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseFeed;->googleBaseAttributesExtension:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    .line 40
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseFeed;->googleBaseAttributesExtension:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    invoke-virtual {p0, v0}, Lcom/google/api/gbase/client/GoogleBaseFeed;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 41
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/google/api/gbase/client/GoogleBaseEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/google/api/gbase/client/GoogleBaseEntry;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseFeed;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 70
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseFeed;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 71
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;->DESCRIPTION:Lcom/google/gdata/data/ExtensionDescription;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareFeedExtension(Lcom/google/gdata/data/ExtensionDescription;)V

    .line 72
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 73
    return-void
.end method

.method public getGoogleBaseAttributes()Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseFeed;->googleBaseAttributesExtension:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension;

    return-object v0
.end method
