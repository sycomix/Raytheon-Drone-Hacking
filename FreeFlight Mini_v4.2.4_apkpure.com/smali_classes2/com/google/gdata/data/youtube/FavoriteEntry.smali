.class public Lcom/google/gdata/data/youtube/FavoriteEntry;
.super Lcom/google/gdata/data/youtube/VideoEntry;
.source "FavoriteEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#favorite"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/VideoEntry;-><init>()V

    .line 33
    const-string v0, "http://gdata.youtube.com/schemas/2007#favorite"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "original":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/youtube/VideoEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 39
    const-string v0, "http://gdata.youtube.com/schemas/2007#favorite"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/google/gdata/data/youtube/VideoEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 46
    const-class v0, Lcom/google/gdata/data/youtube/FavoriteEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 47
    return-void
.end method
