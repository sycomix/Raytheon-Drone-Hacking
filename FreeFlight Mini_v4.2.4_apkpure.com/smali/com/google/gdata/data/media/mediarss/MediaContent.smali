.class public Lcom/google/gdata/data/media/mediarss/MediaContent;
.super Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;
.source "MediaContent.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "content"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;
    }
.end annotation


# instance fields
.field private bitrate:I

.field private channels:I

.field private duration:I

.field private expression:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

.field private fileSize:J

.field private framerate:I

.field private isDefault:Z

.field private language:Ljava/lang/String;

.field private medium:Ljava/lang/String;

.field private samplingrate:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;-><init>()V

    .line 204
    return-void
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "repeat"    # Z

    .prologue
    .line 57
    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 59
    .local v0, "retval":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 60
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 3
    .param p1, "attrsHelper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 189
    const-string v0, "fileSize"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->fileSize:J

    .line 190
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->type:Ljava/lang/String;

    .line 191
    const-string v0, "medium"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->medium:Ljava/lang/String;

    .line 192
    const-string v0, "isDefault"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->isDefault:Z

    .line 193
    const-string v0, "expression"

    const-class v1, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->expression:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    .line 195
    const-string v0, "bitrate"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->bitrate:I

    .line 196
    const-string v0, "framerate"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->framerate:I

    .line 197
    const-string v0, "samplingrate"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->samplingrate:I

    .line 198
    const-string v0, "channels"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->channels:I

    .line 199
    const-string v0, "duration"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->duration:I

    .line 200
    const-string v0, "language"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->language:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public getBitrate()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->bitrate:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->channels:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->duration:I

    return v0
.end method

.method public getExpression()Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->expression:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->fileSize:J

    return-wide v0
.end method

.method public getFramerate()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->framerate:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMedium()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->medium:Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingrate()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->samplingrate:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->isDefault:Z

    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 4
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 156
    iget-wide v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->fileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 157
    const-string v0, "fileSize"

    iget-wide v2, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->fileSize:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 160
    :cond_0
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "medium"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->medium:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-boolean v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->isDefault:Z

    if-eqz v0, :cond_1

    .line 163
    const-string v0, "isDefault"

    iget-boolean v1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->isDefault:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Z)V

    .line 165
    :cond_1
    const-string v0, "expression"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->expression:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    new-instance v2, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v2}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 167
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->bitrate:I

    if-lez v0, :cond_2

    .line 168
    const-string v0, "bitrate"

    iget v1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->bitrate:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 170
    :cond_2
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->framerate:I

    if-lez v0, :cond_3

    .line 171
    const-string v0, "framerate"

    iget v1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->framerate:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 173
    :cond_3
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->samplingrate:I

    if-lez v0, :cond_4

    .line 174
    const-string v0, "samplingrate"

    iget v1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->samplingrate:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 176
    :cond_4
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->channels:I

    if-lez v0, :cond_5

    .line 177
    const-string v0, "channels"

    iget v1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->channels:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 179
    :cond_5
    iget v0, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->duration:I

    if-lez v0, :cond_6

    .line 180
    const-string v0, "duration"

    iget v1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->duration:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 182
    :cond_6
    const-string v0, "language"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->language:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public setBitrate(I)V
    .locals 0
    .param p1, "bitrate"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->bitrate:I

    .line 70
    return-void
.end method

.method public setChannels(I)V
    .locals 0
    .param p1, "channels"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->channels:I

    .line 78
    return-void
.end method

.method public setDefault(Z)V
    .locals 0
    .param p1, "aDefault"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->isDefault:Z

    .line 126
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->duration:I

    .line 86
    return-void
.end method

.method public setExpression(Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;)V
    .locals 0
    .param p1, "expression"    # Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->expression:Lcom/google/gdata/data/media/mediarss/MediaContent$Expression;

    .line 102
    return-void
.end method

.method public setFileSize(J)V
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->fileSize:J

    .line 110
    return-void
.end method

.method public setFramerate(I)V
    .locals 0
    .param p1, "framerate"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->framerate:I

    .line 118
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->language:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setMedium(Ljava/lang/String;)V
    .locals 0
    .param p1, "medium"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->medium:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setSamplingrate(I)V
    .locals 0
    .param p1, "samplingrate"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->samplingrate:I

    .line 142
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaContent;->type:Ljava/lang/String;

    .line 150
    return-void
.end method
