.class public Lcom/google/gdata/data/youtube/YtStatus;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtStatus.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "status"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/youtube/YtStatus$Value;
    }
.end annotation


# instance fields
.field private status:Lcom/google/gdata/data/youtube/YtStatus$Value;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/youtube/YtStatus$Value;)V
    .locals 0
    .param p1, "status"    # Lcom/google/gdata/data/youtube/YtStatus$Value;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtStatus;->status:Lcom/google/gdata/data/youtube/YtStatus$Value;

    .line 50
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 3
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 84
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeContent(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/data/youtube/YtStatus$Value;->valueOf(Ljava/lang/String;)Lcom/google/gdata/data/youtube/YtStatus$Value;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/data/youtube/YtStatus;->status:Lcom/google/gdata/data/youtube/YtStatus$Value;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    const-string v2, "Invalid status value"

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStatus()Lcom/google/gdata/data/youtube/YtStatus$Value;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtStatus;->status:Lcom/google/gdata/data/youtube/YtStatus$Value;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtStatus;->status:Lcom/google/gdata/data/youtube/YtStatus$Value;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtStatus;->status:Lcom/google/gdata/data/youtube/YtStatus$Value;

    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtStatus$Value;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setStatus(Lcom/google/gdata/data/youtube/YtStatus$Value;)V
    .locals 0
    .param p1, "status"    # Lcom/google/gdata/data/youtube/YtStatus$Value;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtStatus;->status:Lcom/google/gdata/data/youtube/YtStatus$Value;

    .line 68
    return-void
.end method
