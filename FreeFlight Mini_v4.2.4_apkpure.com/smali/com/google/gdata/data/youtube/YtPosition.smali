.class public Lcom/google/gdata/data/youtube/YtPosition;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtPosition.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "position"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation


# instance fields
.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 49
    iput p1, p0, Lcom/google/gdata/data/youtube/YtPosition;->position:I

    .line 50
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 4
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 75
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeContent(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    .local v1, "value":I
    if-gtz v1, :cond_0

    .line 80
    new-instance v2, Lcom/google/gdata/util/ParseException;

    const-string v3, "Position should be >= 1"

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/gdata/util/ParseException;

    const-string v3, "Position should be an integer"

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "value":I
    :cond_0
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/gdata/data/youtube/YtPosition;->position:I

    .line 83
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/google/gdata/data/youtube/YtPosition;->position:I

    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 66
    iget v0, p0, Lcom/google/gdata/data/youtube/YtPosition;->position:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/google/gdata/data/youtube/YtPosition;->position:I

    .line 55
    return-void
.end method
