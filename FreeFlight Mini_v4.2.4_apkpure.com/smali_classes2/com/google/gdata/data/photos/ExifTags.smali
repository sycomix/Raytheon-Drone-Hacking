.class public Lcom/google/gdata/data/photos/ExifTags;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "ExifTags.java"

# interfaces
.implements Lcom/google/gdata/data/photos/Extensible;
.implements Lcom/google/gdata/data/Extension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/photos/ExifTags;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/photos/ExifTags;
    .param p1, "x1"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "x2"    # Ljava/lang/Class;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual/range {p0 .. p5}, Lcom/google/gdata/data/photos/ExifTags;->getExtensionHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/photos/ExifTags;

    sget-object v2, Lcom/google/gdata/data/photos/Namespaces;->EXIF_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "tags"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 52
    const-class v0, Lcom/google/gdata/data/photos/ExifTags;

    invoke-static {}, Lcom/google/gdata/data/photos/impl/ExifTag;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 53
    const-class v0, Lcom/google/gdata/data/photos/ExifTags;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 54
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 55
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 330
    sget-object v3, Lcom/google/gdata/data/photos/Namespaces;->EXIF_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v4, "tags"

    invoke-virtual {p1, v3, v4, v5, v5}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 331
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/ExifTags;->getExifTags()Ljava/util/Collection;

    move-result-object v1

    .line 332
    .local v1, "fields":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/data/photos/impl/ExifTag;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/impl/ExifTag;

    .line 333
    .local v0, "field":Lcom/google/gdata/data/photos/impl/ExifTag;
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/photos/impl/ExifTag;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0

    .line 335
    .end local v0    # "field":Lcom/google/gdata/data/photos/impl/ExifTag;
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V

    .line 336
    return-void
.end method

.method public getApetureFNumber()Ljava/lang/Float;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 201
    const-string v2, "fstop"

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/photos/ExifTags;->getExifTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "fstop":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 203
    const/4 v2, 0x0

    .line 206
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/gdata/util/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fstop field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCameraMake()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "make"

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/ExifTags;->getExifTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "model"

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/ExifTags;->getExifTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()Ljava/lang/Float;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 225
    const-string v2, "distance"

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/photos/ExifTags;->getExifTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "distance":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 227
    const/4 v2, 0x0

    .line 230
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/gdata/util/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid distance field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getExifTag(Ljava/lang/String;)Lcom/google/gdata/data/photos/impl/ExifTag;
    .locals 4
    .param p1, "exifName"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/ExifTags;->getExifTags()Ljava/util/Collection;

    move-result-object v2

    .line 79
    .local v2, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/data/photos/impl/ExifTag;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/photos/impl/ExifTag;

    .line 80
    .local v1, "tag":Lcom/google/gdata/data/photos/impl/ExifTag;
    invoke-virtual {v1}, Lcom/google/gdata/data/photos/impl/ExifTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    .end local v1    # "tag":Lcom/google/gdata/data/photos/impl/ExifTag;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExifTagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "exifName"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/ExifTags;->getExifTag(Ljava/lang/String;)Lcom/google/gdata/data/photos/impl/ExifTag;

    move-result-object v0

    .line 92
    .local v0, "tag":Lcom/google/gdata/data/photos/impl/ExifTag;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/impl/ExifTag;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExifTags()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/data/photos/impl/ExifTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const-class v0, Lcom/google/gdata/data/photos/impl/ExifTag;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/ExifTags;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExposureTime()Ljava/lang/Float;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 177
    const-string v2, "exposure"

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/photos/ExifTags;->getExifTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "exposure":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 179
    const/4 v2, 0x0

    .line 182
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/gdata/util/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exposure field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getFlashUsed()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 297
    const-string v1, "flash"

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/ExifTags;->getExifTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "flash":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public getFocalLength()Ljava/lang/Float;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 274
    const-string v2, "focallength"

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/photos/ExifTags;->getExifTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "focalLength":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 276
    const/4 v2, 0x0

    .line 279
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/gdata/util/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid focal length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 344
    new-instance v0, Lcom/google/gdata/data/photos/ExifTags$1;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/photos/ExifTags$1;-><init>(Lcom/google/gdata/data/photos/ExifTags;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getImageUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const-string v0, "imageUniqueID"

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/ExifTags;->getExifTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsoEquivalent()Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 154
    const-string v2, "iso"

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/photos/ExifTags;->getExifTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "iso":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 156
    const/4 v2, 0x0

    .line 159
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/gdata/util/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Iso field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getTime()Ljava/util/Date;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 249
    const-string v2, "time"

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/photos/ExifTags;->getExifTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "time":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 251
    const/4 v2, 0x0

    .line 254
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/gdata/util/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid time field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setApetureFNumber(Ljava/lang/Float;)V
    .locals 1
    .param p1, "fstop"    # Ljava/lang/Float;

    .prologue
    .line 217
    const-string v0, "fstop"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/photos/ExifTags;->setExifTagValue(Ljava/lang/String;Ljava/lang/Number;)V

    .line 218
    return-void
.end method

.method public setCameraMake(Ljava/lang/String;)V
    .locals 1
    .param p1, "make"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v0, "make"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/photos/ExifTags;->setExifTagValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public setCameraModel(Ljava/lang/String;)V
    .locals 1
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, "model"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/photos/ExifTags;->setExifTagValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public setDistance(Ljava/lang/Float;)V
    .locals 1
    .param p1, "distance"    # Ljava/lang/Float;

    .prologue
    .line 241
    const-string v0, "distance"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/photos/ExifTags;->setExifTagValue(Ljava/lang/String;Ljava/lang/Number;)V

    .line 242
    return-void
.end method

.method public setExifTagValue(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 99
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/ExifTags;->setExifTagValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/ExifTags;->setExifTagValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExifTagValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/ExifTags;->getExifTag(Ljava/lang/String;)Lcom/google/gdata/data/photos/impl/ExifTag;

    move-result-object v0

    .line 111
    .local v0, "tag":Lcom/google/gdata/data/photos/impl/ExifTag;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/ExifTags;->removeRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 114
    :cond_0
    if-eqz p2, :cond_1

    .line 115
    new-instance v1, Lcom/google/gdata/data/photos/impl/ExifTag;

    invoke-direct {v1, p1, p2}, Lcom/google/gdata/data/photos/impl/ExifTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/ExifTags;->addRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 117
    :cond_1
    return-void
.end method

.method public setExposureTime(Ljava/lang/Float;)V
    .locals 1
    .param p1, "exposure"    # Ljava/lang/Float;

    .prologue
    .line 193
    const-string v0, "exposure"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/photos/ExifTags;->setExifTagValue(Ljava/lang/String;Ljava/lang/Number;)V

    .line 194
    return-void
.end method

.method public setFlashUsed(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "flash"    # Ljava/lang/Boolean;

    .prologue
    .line 305
    const-string v1, "flash"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/data/photos/ExifTags;->setExifTagValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void

    .line 305
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setFocalLength(Ljava/lang/Float;)V
    .locals 1
    .param p1, "focalLength"    # Ljava/lang/Float;

    .prologue
    .line 290
    const-string v0, "focallength"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/photos/ExifTags;->setExifTagValue(Ljava/lang/String;Ljava/lang/Number;)V

    .line 291
    return-void
.end method

.method public setImageUniqueID(Ljava/lang/String;)V
    .locals 1
    .param p1, "imageUniqueID"    # Ljava/lang/String;

    .prologue
    .line 319
    const-string v0, "imageUniqueID"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/photos/ExifTags;->setExifTagValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public setIsoEquivalent(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "iso"    # Ljava/lang/Integer;

    .prologue
    .line 170
    const-string v0, "iso"

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/photos/ExifTags;->setExifTagValue(Ljava/lang/String;Ljava/lang/Number;)V

    .line 171
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 4
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 265
    const-string v1, "time"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/data/photos/ExifTags;->setExifTagValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void

    .line 265
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
