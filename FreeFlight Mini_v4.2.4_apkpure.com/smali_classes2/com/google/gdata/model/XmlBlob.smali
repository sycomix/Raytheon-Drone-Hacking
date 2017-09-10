.class public Lcom/google/gdata/model/XmlBlob;
.super Lcom/google/gdata/model/Element;
.source "XmlBlob.java"


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/XmlBlob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    const-class v1, Lcom/google/gdata/model/XmlBlob;

    invoke-static {v0, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/XmlBlob;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/XmlBlob;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/XmlBlob;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 67
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 53
    sget-object v1, Lcom/google/gdata/model/XmlBlob;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    sget-object v1, Lcom/google/gdata/model/XmlBlob;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 58
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    goto :goto_0
.end method


# virtual methods
.method public getBase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBlob()Ljava/lang/String;
    .locals 7

    .prologue
    .line 122
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 125
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v4, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;

    invoke-direct {v4}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;->build()Lcom/google/gdata/wireformats/output/OutputProperties;

    move-result-object v2

    .line 127
    .local v2, "outProps":Lcom/google/gdata/wireformats/output/OutputProperties;
    sget-object v4, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    sget-object v5, Lcom/google/gdata/util/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v3, v5, v6}, Lcom/google/gdata/wireformats/XmlWireFormat;->createGenerator(Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/io/Writer;Ljava/nio/charset/Charset;Z)Lcom/google/gdata/wireformats/WireFormatGenerator;

    move-result-object v1

    .line 130
    .local v1, "generator":Lcom/google/gdata/wireformats/WireFormatGenerator;
    :try_start_0
    invoke-interface {v1, p0}, Lcom/google/gdata/wireformats/WireFormatGenerator;->generate(Lcom/google/gdata/model/Element;)V
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Lcom/google/gdata/wireformats/ContentValidationException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 133
    .end local v0    # "e":Lcom/google/gdata/wireformats/ContentValidationException;
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getFullText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBase(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBlob(Ljava/lang/String;)V
    .locals 6
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/gdata/model/XmlBlob;->clear()V

    .line 147
    new-instance v3, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;

    invoke-direct {v3}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->build()Lcom/google/gdata/wireformats/input/InputProperties;

    move-result-object v1

    .line 150
    .local v1, "inProps":Lcom/google/gdata/wireformats/input/InputProperties;
    sget-object v3, Lcom/google/gdata/wireformats/WireFormat;->XML:Lcom/google/gdata/wireformats/XmlWireFormat;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string v5, "utf-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/gdata/wireformats/XmlWireFormat;->createParser(Lcom/google/gdata/wireformats/input/InputProperties;Ljava/io/Reader;Ljava/nio/charset/Charset;)Lcom/google/gdata/wireformats/WireFormatParser;

    move-result-object v2

    .line 153
    .local v2, "parser":Lcom/google/gdata/wireformats/WireFormatParser;
    :try_start_0
    invoke-interface {v2, p0}, Lcom/google/gdata/wireformats/WireFormatParser;->parse(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/util/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gdata/wireformats/ContentValidationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 163
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 156
    .end local v0    # "e":Lcom/google/gdata/util/ParseException;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 158
    .end local v0    # "e":Lcom/google/gdata/wireformats/ContentCreationException;
    :catch_2
    move-exception v0

    .line 159
    .local v0, "e":Lcom/google/gdata/wireformats/ContentValidationException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 160
    .end local v0    # "e":Lcom/google/gdata/wireformats/ContentValidationException;
    :catch_3
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setFullText(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
