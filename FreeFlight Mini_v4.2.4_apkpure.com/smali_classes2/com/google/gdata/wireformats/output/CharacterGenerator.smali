.class public abstract Lcom/google/gdata/wireformats/output/CharacterGenerator;
.super Ljava/lang/Object;
.source "CharacterGenerator.java"

# interfaces
.implements Lcom/google/gdata/wireformats/output/OutputGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gdata/wireformats/output/OutputGenerator",
        "<TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    .local p0, "this":Lcom/google/gdata/wireformats/output/CharacterGenerator;, "Lcom/google/gdata/wireformats/output/CharacterGenerator<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getCharsetEncoding(Lcom/google/gdata/wireformats/output/OutputProperties;)Ljava/lang/String;
    .locals 2
    .param p0, "outProps"    # Lcom/google/gdata/wireformats/output/OutputProperties;

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "charset":Ljava/lang/String;
    invoke-interface {p0}, Lcom/google/gdata/wireformats/output/OutputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    invoke-interface {p0}, Lcom/google/gdata/wireformats/output/OutputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/util/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_0
    if-nez v0, :cond_1

    .line 52
    const-string v0, "utf-8"

    .line 54
    :cond_1
    return-object v0
.end method


# virtual methods
.method public generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 1
    .param p1, "contentStream"    # Ljava/io/OutputStream;
    .param p2, "outProps"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lcom/google/gdata/wireformats/output/OutputProperties;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/google/gdata/wireformats/output/CharacterGenerator;, "Lcom/google/gdata/wireformats/output/CharacterGenerator<TS;>;"
    .local p3, "s":Ljava/lang/Object;, "TS;"
    invoke-virtual {p0, p2, p1}, Lcom/google/gdata/wireformats/output/CharacterGenerator;->getContentWriter(Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    .line 73
    .local v0, "contentWriter":Ljava/io/Writer;
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/gdata/wireformats/output/CharacterGenerator;->generate(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public abstract generate(Ljava/io/Writer;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Lcom/google/gdata/wireformats/output/OutputProperties;",
            "TS;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getContentWriter(Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 2
    .param p1, "outProps"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p2, "contentStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/google/gdata/wireformats/output/CharacterGenerator;, "Lcom/google/gdata/wireformats/output/CharacterGenerator<TS;>;"
    invoke-static {p1}, Lcom/google/gdata/wireformats/output/CharacterGenerator;->getCharsetEncoding(Lcom/google/gdata/wireformats/output/OutputProperties;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "encoding":Ljava/lang/String;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v1
.end method

.method protected usePrettyPrint(Lcom/google/gdata/wireformats/output/OutputProperties;)Z
    .locals 1
    .param p1, "outProps"    # Lcom/google/gdata/wireformats/output/OutputProperties;

    .prologue
    .line 97
    .local p0, "this":Lcom/google/gdata/wireformats/output/CharacterGenerator;, "Lcom/google/gdata/wireformats/output/CharacterGenerator<TS;>;"
    const-string v0, "prettyprint"

    invoke-interface {p1, v0}, Lcom/google/gdata/wireformats/output/OutputProperties;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
