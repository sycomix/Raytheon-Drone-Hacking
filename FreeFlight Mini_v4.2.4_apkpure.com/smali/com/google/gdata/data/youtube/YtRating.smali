.class public Lcom/google/gdata/data/youtube/YtRating;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtRating.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "rating"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/youtube/YtRating$Value;
    }
.end annotation


# static fields
.field private static final NUM_DISLIKES:Ljava/lang/String; = "numDislikes"

.field private static final NUM_LIKES:Ljava/lang/String; = "numLikes"

.field private static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private numDislikes:I

.field private numLikes:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "numLikes"    # I
    .param p2, "numDislikes"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 77
    iput p1, p0, Lcom/google/gdata/data/youtube/YtRating;->numLikes:I

    .line 78
    iput p2, p0, Lcom/google/gdata/data/youtube/YtRating;->numDislikes:I

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtRating;->value:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 135
    const-string v0, "numLikes"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/youtube/YtRating;->numLikes:I

    .line 136
    const-string v0, "numDislikes"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/youtube/YtRating;->numDislikes:I

    .line 137
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtRating;->value:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public getNumDislikes()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/gdata/data/youtube/YtRating;->numDislikes:I

    return v0
.end method

.method public getNumLikes()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/gdata/data/youtube/YtRating;->numLikes:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtRating;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 4
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 143
    iget v0, p0, Lcom/google/gdata/data/youtube/YtRating;->numLikes:I

    if-lez v0, :cond_0

    .line 144
    const-string v0, "numLikes"

    iget v1, p0, Lcom/google/gdata/data/youtube/YtRating;->numLikes:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 147
    :cond_0
    iget v0, p0, Lcom/google/gdata/data/youtube/YtRating;->numDislikes:I

    if-lez v0, :cond_1

    .line 148
    const-string v0, "numDislikes"

    iget v1, p0, Lcom/google/gdata/data/youtube/YtRating;->numDislikes:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtRating;->value:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 152
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/google/gdata/data/youtube/YtRating;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_2
    return-void
.end method

.method public setNumDislikes(I)V
    .locals 0
    .param p1, "numDislikes"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/google/gdata/data/youtube/YtRating;->numDislikes:I

    .line 116
    return-void
.end method

.method public setNumLikes(I)V
    .locals 0
    .param p1, "numLikes"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/google/gdata/data/youtube/YtRating;->numLikes:I

    .line 102
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtRating;->value:Ljava/lang/String;

    .line 130
    return-void
.end method
