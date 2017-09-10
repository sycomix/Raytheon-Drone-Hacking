.class public Lcom/google/gdata/data/photos/GphotoOriginalVideo;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "GphotoOriginalVideo.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "originalvideo"
    nsAlias = "gphoto"
    nsUri = "http://schemas.google.com/photos/2007"
.end annotation


# static fields
.field private static final CHANNELS:Ljava/lang/String; = "channels"

.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final HEIGHT:Ljava/lang/String; = "height"

.field private static final SAMPLINGRATE:Ljava/lang/String; = "samplingrate"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final WIDTH:Ljava/lang/String; = "width"

.field static final XML_NAME:Ljava/lang/String; = "originalvideo"


# instance fields
.field private channels:Ljava/lang/Integer;

.field private duration:Ljava/lang/Long;

.field private height:Ljava/lang/Integer;

.field private samplingrate:Ljava/lang/Float;

.field private type:Ljava/lang/String;

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->channels:Ljava/lang/Integer;

    .line 61
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->duration:Ljava/lang/Long;

    .line 64
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->height:Ljava/lang/Integer;

    .line 67
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->samplingrate:Ljava/lang/Float;

    .line 70
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->type:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->width:Ljava/lang/Integer;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "channels"    # Ljava/lang/Integer;
    .param p2, "duration"    # Ljava/lang/Long;
    .param p3, "height"    # Ljava/lang/Integer;
    .param p4, "samplingrate"    # Ljava/lang/Float;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "width"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->channels:Ljava/lang/Integer;

    .line 61
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->duration:Ljava/lang/Long;

    .line 64
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->height:Ljava/lang/Integer;

    .line 67
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->samplingrate:Ljava/lang/Float;

    .line 70
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->type:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->width:Ljava/lang/Integer;

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->setChannels(Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->setDuration(Ljava/lang/Long;)V

    .line 97
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->setHeight(Ljava/lang/Integer;)V

    .line 98
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->setSamplingrate(Ljava/lang/Float;)V

    .line 99
    invoke-virtual {p0, p5}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->setType(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p6}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->setWidth(Ljava/lang/Integer;)V

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->setImmutable(Z)V

    .line 102
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 287
    const-class v1, Lcom/google/gdata/data/photos/GphotoOriginalVideo;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 289
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 290
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 291
    return-object v0
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
    const/4 v2, 0x0

    .line 307
    const-string v0, "channels"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->channels:Ljava/lang/Integer;

    .line 308
    const-string v0, "duration"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->duration:Ljava/lang/Long;

    .line 309
    const-string v0, "height"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->height:Ljava/lang/Integer;

    .line 310
    const-string v0, "samplingrate"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeFloat(Ljava/lang/String;Z)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->samplingrate:Ljava/lang/Float;

    .line 311
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->type:Ljava/lang/String;

    .line 312
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->width:Ljava/lang/Integer;

    .line 313
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    if-ne p0, p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 320
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 321
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 323
    check-cast v0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;

    .line 324
    .local v0, "other":Lcom/google/gdata/data/photos/GphotoOriginalVideo;
    iget-object v3, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->channels:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->channels:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->duration:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->duration:Ljava/lang/Long;

    invoke-static {v3, v4}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->height:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->height:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->samplingrate:Ljava/lang/Float;

    iget-object v4, v0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->samplingrate:Ljava/lang/Float;

    invoke-static {v3, v4}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->width:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->width:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getChannels()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->channels:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDuration()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->duration:Ljava/lang/Long;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSamplingrate()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->samplingrate:Ljava/lang/Float;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasChannels()Z
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->getChannels()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDuration()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSamplingrate()Z
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->getSamplingrate()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 335
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->channels:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 336
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->channels:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->duration:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 339
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->duration:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->height:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 342
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->height:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->samplingrate:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 345
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->samplingrate:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 347
    :cond_3
    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->type:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 348
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 350
    :cond_4
    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->width:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 351
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->width:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 353
    :cond_5
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 296
    const-string v0, "channels"

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->channels:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    const-string v0, "duration"

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->duration:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    const-string v0, "height"

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->height:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    const-string v0, "samplingrate"

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->samplingrate:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string/jumbo v0, "width"

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->width:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method public setChannels(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "channels"    # Ljava/lang/Integer;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->throwExceptionIfImmutable()V

    .line 120
    iput-object p1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->channels:Ljava/lang/Integer;

    .line 121
    return-void
.end method

.method public setDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/Long;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->throwExceptionIfImmutable()V

    .line 149
    iput-object p1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->duration:Ljava/lang/Long;

    .line 150
    return-void
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/Integer;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->throwExceptionIfImmutable()V

    .line 177
    iput-object p1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->height:Ljava/lang/Integer;

    .line 178
    return-void
.end method

.method public setSamplingrate(Ljava/lang/Float;)V
    .locals 0
    .param p1, "samplingrate"    # Ljava/lang/Float;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->throwExceptionIfImmutable()V

    .line 205
    iput-object p1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->samplingrate:Ljava/lang/Float;

    .line 206
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->throwExceptionIfImmutable()V

    .line 233
    iput-object p1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->type:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/Integer;

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->throwExceptionIfImmutable()V

    .line 261
    iput-object p1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->width:Ljava/lang/Integer;

    .line 262
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{GphotoOriginalVideo channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->channels:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->duration:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->height:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " samplingrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->samplingrate:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoOriginalVideo;->width:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method
