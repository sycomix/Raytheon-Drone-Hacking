.class public Lcom/google/gdata/util/ParseUtil;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getExtProfile(Lcom/google/gdata/data/BaseEntry;Z)Lcom/google/gdata/data/ExtensionProfile;
    .locals 2
    .param p1, "isAdapting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;Z)",
            "Lcom/google/gdata/data/ExtensionProfile;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "entry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    const/4 v0, 0x0

    .line 258
    .local v0, "extProfile":Lcom/google/gdata/data/ExtensionProfile;
    new-instance v0, Lcom/google/gdata/data/ExtensionProfile;

    .end local v0    # "extProfile":Lcom/google/gdata/data/ExtensionProfile;
    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionProfile;-><init>()V

    .line 259
    .restart local v0    # "extProfile":Lcom/google/gdata/data/ExtensionProfile;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 260
    if-eqz p1, :cond_0

    .line 261
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->setAutoExtending(Z)V

    .line 263
    :cond_0
    return-object v0
.end method

.method private static getExtProfile(Lcom/google/gdata/data/BaseFeed;Z)Lcom/google/gdata/data/ExtensionProfile;
    .locals 2
    .param p1, "isAdapting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;Z)",
            "Lcom/google/gdata/data/ExtensionProfile;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "feed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    const/4 v0, 0x0

    .line 269
    .local v0, "extProfile":Lcom/google/gdata/data/ExtensionProfile;
    new-instance v0, Lcom/google/gdata/data/ExtensionProfile;

    .end local v0    # "extProfile":Lcom/google/gdata/data/ExtensionProfile;
    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionProfile;-><init>()V

    .line 270
    .restart local v0    # "extProfile":Lcom/google/gdata/data/ExtensionProfile;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 271
    if-eqz p1, :cond_0

    .line 272
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->setAutoExtending(Z)V

    .line 274
    :cond_0
    return-object v0
.end method

.method private static isAdapting(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/google/gdata/data/Entry;

    if-eq p0, v0, :cond_0

    const-class v0, Lcom/google/gdata/model/atom/Entry;

    if-eq p0, v0, :cond_0

    const-class v0, Lcom/google/gdata/data/Feed;

    if-eq p0, v0, :cond_0

    const-class v0, Lcom/google/gdata/model/atom/Feed;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseElement(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/model/Element;
    .locals 8
    .param p0, "source"    # Lcom/google/gdata/data/ParseSource;
    .param p1, "element"    # Lcom/google/gdata/model/Element;
    .param p2, "schema"    # Lcom/google/gdata/model/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    sget-object v1, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    .line 198
    .local v1, "format":Lcom/google/gdata/wireformats/WireFormat;
    new-instance v5, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;

    invoke-direct {v5}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->setElementMetadata(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;

    invoke-virtual {v5}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->build()Lcom/google/gdata/wireformats/input/InputProperties;

    move-result-object v2

    .line 202
    .local v2, "inProps":Lcom/google/gdata/wireformats/input/InputProperties;
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v5

    sget-object v6, Lcom/google/gdata/util/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2, v5, v6}, Lcom/google/gdata/wireformats/WireFormat;->createParser(Lcom/google/gdata/wireformats/input/InputProperties;Ljava/io/Reader;Ljava/nio/charset/Charset;)Lcom/google/gdata/wireformats/WireFormatParser;

    move-result-object v3

    .line 213
    .local v3, "parser":Lcom/google/gdata/wireformats/WireFormatParser;
    :goto_0
    :try_start_0
    invoke-interface {v3, p1}, Lcom/google/gdata/wireformats/WireFormatParser;->parse(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/wireformats/ContentValidationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    return-object v5

    .line 204
    .end local v3    # "parser":Lcom/google/gdata/wireformats/WireFormatParser;
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 205
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 206
    .local v4, "reader":Ljava/io/InputStreamReader;
    sget-object v5, Lcom/google/gdata/util/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2, v4, v5}, Lcom/google/gdata/wireformats/WireFormat;->createParser(Lcom/google/gdata/wireformats/input/InputProperties;Ljava/io/Reader;Ljava/nio/charset/Charset;)Lcom/google/gdata/wireformats/WireFormatParser;

    move-result-object v3

    .line 207
    .restart local v3    # "parser":Lcom/google/gdata/wireformats/WireFormatParser;
    goto :goto_0

    .end local v3    # "parser":Lcom/google/gdata/wireformats/WireFormatParser;
    .end local v4    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/google/gdata/wireformats/WireFormat;->createParser(Lcom/google/gdata/wireformats/input/InputProperties;Lcom/google/gdata/data/XmlEventSource;)Lcom/google/gdata/wireformats/WireFormatParser;

    move-result-object v3

    .restart local v3    # "parser":Lcom/google/gdata/wireformats/WireFormatParser;
    goto :goto_0

    .line 210
    .end local v3    # "parser":Lcom/google/gdata/wireformats/WireFormatParser;
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected source: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 214
    .restart local v3    # "parser":Lcom/google/gdata/wireformats/WireFormatParser;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v5, Lcom/google/gdata/util/ParseException;

    sget-object v6, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v6, v6, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateExtension:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v5, v6, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v5

    .line 217
    .end local v0    # "e":Lcom/google/gdata/wireformats/ContentCreationException;
    :catch_1
    move-exception v0

    .line 218
    .local v0, "e":Lcom/google/gdata/wireformats/ContentValidationException;
    invoke-virtual {v0}, Lcom/google/gdata/wireformats/ContentValidationException;->toParseException()Lcom/google/gdata/util/ParseException;

    move-result-object v5

    throw v5
.end method

.method private static parseEntry(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p0, "source"    # Lcom/google/gdata/data/ParseSource;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "entry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/data/BaseEntry;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V

    .line 233
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/data/BaseEntry;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/InputStream;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/data/BaseEntry;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/XmlEventSource;)V

    goto :goto_0

    .line 231
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseFeed(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p0, "source"    # Lcom/google/gdata/data/ParseSource;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "feed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/data/BaseFeed;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V

    .line 246
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/data/BaseFeed;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/InputStream;)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/data/BaseFeed;->parseAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/XmlEventSource;)V

    goto :goto_0

    .line 244
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readEntry(Lcom/google/gdata/data/ParseSource;)Lcom/google/gdata/data/IEntry;
    .locals 1
    .param p0, "source"    # Lcom/google/gdata/data/ParseSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0, v0, v0}, Lcom/google/gdata/util/ParseUtil;->readEntry(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/data/IEntry;

    move-result-object v0

    return-object v0
.end method

.method public static readEntry(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/data/IEntry;
    .locals 10
    .param p0, "source"    # Lcom/google/gdata/data/ParseSource;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "schema"    # Lcom/google/gdata/model/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Lcom/google/gdata/model/Schema;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "requestedClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 72
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Null source"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 75
    :cond_0
    move-object v3, p1

    .line 76
    .local v3, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/IEntry;>;"
    move-object v7, p1

    .line 80
    .local v7, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/IEntry;>;"
    if-nez v3, :cond_1

    .line 81
    const-class v3, Lcom/google/gdata/data/Entry;

    .line 82
    const-class v7, Lcom/google/gdata/data/BaseEntry;

    .line 84
    :cond_1
    invoke-static {v3}, Lcom/google/gdata/util/ParseUtil;->isAdapting(Ljava/lang/Class;)Z

    move-result v6

    .line 89
    .local v6, "isAdapting":Z
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    .local v2, "entry":Lcom/google/gdata/data/IEntry;
    instance-of v8, v2, Lcom/google/gdata/model/Element;

    if-eqz v8, :cond_3

    .line 99
    check-cast v2, Lcom/google/gdata/model/Element;

    .end local v2    # "entry":Lcom/google/gdata/data/IEntry;
    invoke-static {p0, v2, p3}, Lcom/google/gdata/util/ParseUtil;->parseElement(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/model/Element;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/IEntry;

    .line 120
    .restart local v2    # "entry":Lcom/google/gdata/data/IEntry;
    :cond_2
    :goto_0
    invoke-virtual {v7, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gdata/data/IEntry;

    return-object v8

    .line 90
    .end local v2    # "entry":Lcom/google/gdata/data/IEntry;
    :catch_0
    move-exception v4

    .line 91
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    new-instance v8, Lcom/google/gdata/util/ServiceException;

    sget-object v9, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v9, v9, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateEntry:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v8, v9, v4}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v8

    .line 93
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    .line 94
    .local v5, "ie":Ljava/lang/InstantiationException;
    new-instance v8, Lcom/google/gdata/util/ServiceException;

    sget-object v9, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v9, v9, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateEntry:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v8, v9, v5}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v8

    .end local v5    # "ie":Ljava/lang/InstantiationException;
    .restart local v2    # "entry":Lcom/google/gdata/data/IEntry;
    :cond_3
    move-object v1, v2

    .line 101
    check-cast v1, Lcom/google/gdata/data/BaseEntry;

    .line 104
    .local v1, "baseEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    if-nez p2, :cond_4

    .line 105
    invoke-static {v1, v6}, Lcom/google/gdata/util/ParseUtil;->getExtProfile(Lcom/google/gdata/data/BaseEntry;Z)Lcom/google/gdata/data/ExtensionProfile;

    move-result-object p2

    .line 108
    :cond_4
    invoke-static {p0, v1, p2}, Lcom/google/gdata/util/ParseUtil;->parseEntry(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 111
    if-eqz v6, :cond_2

    .line 112
    invoke-virtual {v1}, Lcom/google/gdata/data/BaseEntry;->getAdaptedEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v0

    .line 113
    .local v0, "adaptedEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-virtual {v7, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 114
    move-object v2, v0

    goto :goto_0
.end method

.method public static readFeed(Lcom/google/gdata/data/ParseSource;)Lcom/google/gdata/data/IFeed;
    .locals 1
    .param p0, "source"    # Lcom/google/gdata/data/ParseSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0, v0, v0}, Lcom/google/gdata/util/ParseUtil;->readFeed(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    return-object v0
.end method

.method public static readFeed(Lcom/google/gdata/data/ParseSource;Ljava/lang/Class;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/data/IFeed;
    .locals 10
    .param p0, "source"    # Lcom/google/gdata/data/ParseSource;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "schema"    # Lcom/google/gdata/model/Schema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Lcom/google/gdata/model/Schema;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "requestedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    if-nez p0, :cond_0

    .line 145
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "Null source"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 148
    :cond_0
    move-object v3, p1

    .line 149
    .local v3, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/IFeed;>;"
    move-object v7, p1

    .line 152
    .local v7, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/IFeed;>;"
    if-nez v3, :cond_1

    .line 153
    const-class v3, Lcom/google/gdata/data/Feed;

    .line 154
    const-class v7, Lcom/google/gdata/data/BaseFeed;

    .line 156
    :cond_1
    invoke-static {v3}, Lcom/google/gdata/util/ParseUtil;->isAdapting(Ljava/lang/Class;)Z

    move-result v6

    .line 161
    .local v6, "isAdapting":Z
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    .local v2, "feed":Lcom/google/gdata/data/IFeed;
    instance-of v8, v2, Lcom/google/gdata/model/Element;

    if-eqz v8, :cond_3

    .line 172
    check-cast v2, Lcom/google/gdata/model/Element;

    .end local v2    # "feed":Lcom/google/gdata/data/IFeed;
    invoke-static {p0, v2, p3}, Lcom/google/gdata/util/ParseUtil;->parseElement(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Schema;)Lcom/google/gdata/model/Element;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/IFeed;

    .line 192
    .restart local v2    # "feed":Lcom/google/gdata/data/IFeed;
    :cond_2
    :goto_0
    invoke-virtual {v7, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gdata/data/IFeed;

    return-object v8

    .line 162
    .end local v2    # "feed":Lcom/google/gdata/data/IFeed;
    :catch_0
    move-exception v4

    .line 163
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    new-instance v8, Lcom/google/gdata/util/ServiceException;

    sget-object v9, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v9, v9, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateFeed:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v8, v9, v4}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v8

    .line 165
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    .line 166
    .local v5, "ie":Ljava/lang/InstantiationException;
    new-instance v8, Lcom/google/gdata/util/ServiceException;

    sget-object v9, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v9, v9, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateFeed:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v8, v9, v5}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v8

    .end local v5    # "ie":Ljava/lang/InstantiationException;
    .restart local v2    # "feed":Lcom/google/gdata/data/IFeed;
    :cond_3
    move-object v1, v2

    .line 174
    check-cast v1, Lcom/google/gdata/data/BaseFeed;

    .line 177
    .local v1, "baseFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    if-nez p2, :cond_4

    .line 178
    invoke-static {v1, v6}, Lcom/google/gdata/util/ParseUtil;->getExtProfile(Lcom/google/gdata/data/BaseFeed;Z)Lcom/google/gdata/data/ExtensionProfile;

    move-result-object p2

    .line 181
    :cond_4
    invoke-static {p0, v1, p2}, Lcom/google/gdata/util/ParseUtil;->parseFeed(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 184
    if-eqz v6, :cond_2

    .line 185
    invoke-virtual {v1}, Lcom/google/gdata/data/BaseFeed;->getAdaptedFeed()Lcom/google/gdata/data/BaseFeed;

    move-result-object v0

    .line 186
    .local v0, "adaptedFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-virtual {v7, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 187
    move-object v2, v0

    goto :goto_0
.end method
