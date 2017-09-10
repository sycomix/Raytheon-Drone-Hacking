.class public Lcom/google/gdata/data/media/GDataContentHandler;
.super Ljava/lang/Object;
.source "GDataContentHandler.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# static fields
.field private static final DEFAULT_INPUT_PROPERTIES:Lcom/google/gdata/wireformats/input/InputProperties;

.field private static final DEFAULT_OUTPUT_PROPERTIES:Lcom/google/gdata/wireformats/output/OutputProperties;

.field private static final threadInputProperties:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadOutputProperties:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/gdata/wireformats/output/OutputProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;-><init>()V

    invoke-static {}, Lcom/google/gdata/client/media/MediaService;->getDefaultAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->setAltRegistry(Lcom/google/gdata/wireformats/AltRegistry;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;

    sget-object v1, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->setContentType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;

    const-class v1, Lcom/google/gdata/data/Entry;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->setExpectType(Ljava/lang/Class;)Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v1}, Lcom/google/gdata/data/ExtensionProfile;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->setExtensionProfile(Lcom/google/gdata/data/ExtensionProfile;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/input/InputPropertiesBuilder;->build()Lcom/google/gdata/wireformats/input/InputProperties;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/media/GDataContentHandler;->DEFAULT_INPUT_PROPERTIES:Lcom/google/gdata/wireformats/input/InputProperties;

    .line 85
    new-instance v0, Lcom/google/gdata/data/media/GDataContentHandler$1;

    invoke-direct {v0}, Lcom/google/gdata/data/media/GDataContentHandler$1;-><init>()V

    sput-object v0, Lcom/google/gdata/data/media/GDataContentHandler;->threadInputProperties:Ljava/lang/ThreadLocal;

    .line 98
    new-instance v0, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;

    invoke-direct {v0}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;-><init>()V

    invoke-static {}, Lcom/google/gdata/client/media/MediaService;->getDefaultAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;->setAltRegistry(Lcom/google/gdata/wireformats/AltRegistry;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;

    new-instance v1, Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v1}, Lcom/google/gdata/data/ExtensionProfile;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;->setExtensionProfile(Lcom/google/gdata/data/ExtensionProfile;)Lcom/google/gdata/wireformats/StreamPropertiesBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;

    invoke-virtual {v0}, Lcom/google/gdata/wireformats/output/OutputPropertiesBuilder;->build()Lcom/google/gdata/wireformats/output/OutputProperties;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/media/GDataContentHandler;->DEFAULT_OUTPUT_PROPERTIES:Lcom/google/gdata/wireformats/output/OutputProperties;

    .line 108
    new-instance v0, Lcom/google/gdata/data/media/GDataContentHandler$2;

    invoke-direct {v0}, Lcom/google/gdata/data/media/GDataContentHandler$2;-><init>()V

    sput-object v0, Lcom/google/gdata/data/media/GDataContentHandler;->threadOutputProperties:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/gdata/wireformats/input/InputProperties;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/gdata/data/media/GDataContentHandler;->DEFAULT_INPUT_PROPERTIES:Lcom/google/gdata/wireformats/input/InputProperties;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/gdata/wireformats/output/OutputProperties;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/gdata/data/media/GDataContentHandler;->DEFAULT_OUTPUT_PROPERTIES:Lcom/google/gdata/wireformats/output/OutputProperties;

    return-object v0
.end method

.method private generateAtom(Lcom/google/gdata/wireformats/output/OutputGenerator;Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 4
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .param p3, "outputProperties"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p4, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/output/OutputGenerator",
            "<*>;",
            "Ljava/io/OutputStream;",
            "Lcom/google/gdata/wireformats/output/OutputProperties;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "generator":Lcom/google/gdata/wireformats/output/OutputGenerator;, "Lcom/google/gdata/wireformats/output/OutputGenerator<*>;"
    invoke-interface {p1}, Lcom/google/gdata/wireformats/output/OutputGenerator;->getSourceType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/gdata/data/IAtom;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const-string v3, "Generator does not handle atom content"

    invoke-static {v2, v3}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 217
    instance-of v2, p4, Lcom/google/gdata/data/IAtom;

    const-string v3, "Source object must be Atom content"

    invoke-static {v2, v3}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move-object v1, p4

    .line 219
    check-cast v1, Lcom/google/gdata/data/IAtom;

    .line 221
    .local v1, "atomSource":Lcom/google/gdata/data/IAtom;
    move-object v0, p1

    .line 222
    .local v0, "atomGenerator":Lcom/google/gdata/wireformats/output/OutputGenerator;, "Lcom/google/gdata/wireformats/output/OutputGenerator<Lcom/google/gdata/data/IAtom;>;"
    invoke-interface {v0, p2, p3, v1}, Lcom/google/gdata/wireformats/output/OutputGenerator;->generate(Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public static getThreadInputProperties()Lcom/google/gdata/wireformats/input/InputProperties;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/google/gdata/data/media/GDataContentHandler;->threadInputProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/input/InputProperties;

    return-object v0
.end method

.method public static getThreadOutputProperties()Lcom/google/gdata/wireformats/output/OutputProperties;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/google/gdata/data/media/GDataContentHandler;->threadOutputProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/output/OutputProperties;

    return-object v0
.end method

.method private parseAtom(Lcom/google/gdata/wireformats/input/InputParser;Ljava/io/InputStream;Lcom/google/gdata/util/ContentType;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "contentType"    # Lcom/google/gdata/util/ContentType;
    .param p4, "inputProperties"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/wireformats/input/InputParser",
            "<*>;",
            "Ljava/io/InputStream;",
            "Lcom/google/gdata/util/ContentType;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "parser":Lcom/google/gdata/wireformats/input/InputParser;, "Lcom/google/gdata/wireformats/input/InputParser<*>;"
    .local p5, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p1}, Lcom/google/gdata/wireformats/input/InputParser;->getResultType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/gdata/data/IAtom;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "Parser does not handle atom content"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 174
    new-instance v0, Lcom/google/gdata/data/ParseSource;

    invoke-direct {v0, p2}, Lcom/google/gdata/data/ParseSource;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lcom/google/gdata/data/media/GDataContentHandler$3;

    invoke-direct {v1, p0, p4, p3}, Lcom/google/gdata/data/media/GDataContentHandler$3;-><init>(Lcom/google/gdata/data/media/GDataContentHandler;Lcom/google/gdata/wireformats/input/InputProperties;Lcom/google/gdata/util/ContentType;)V

    invoke-interface {p1, v0, v1, p5}, Lcom/google/gdata/wireformats/input/InputParser;->parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static setThreadInputProperties(Lcom/google/gdata/wireformats/input/InputProperties;)Lcom/google/gdata/wireformats/input/InputProperties;
    .locals 2
    .param p0, "inputProperties"    # Lcom/google/gdata/wireformats/input/InputProperties;

    .prologue
    .line 123
    const-string v1, "inputProperties"

    invoke-static {p0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {}, Lcom/google/gdata/data/media/GDataContentHandler;->getThreadInputProperties()Lcom/google/gdata/wireformats/input/InputProperties;

    move-result-object v0

    .line 126
    .local v0, "currentProperties":Lcom/google/gdata/wireformats/input/InputProperties;
    sget-object v1, Lcom/google/gdata/data/media/GDataContentHandler;->threadInputProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 127
    return-object v0
.end method

.method public static setThreadOutputProperties(Lcom/google/gdata/wireformats/output/OutputProperties;)Lcom/google/gdata/wireformats/output/OutputProperties;
    .locals 2
    .param p0, "outputProperties"    # Lcom/google/gdata/wireformats/output/OutputProperties;

    .prologue
    .line 144
    const-string v1, "outputProperties"

    invoke-static {p0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {}, Lcom/google/gdata/data/media/GDataContentHandler;->getThreadOutputProperties()Lcom/google/gdata/wireformats/output/OutputProperties;

    move-result-object v0

    .line 147
    .local v0, "currentProperties":Lcom/google/gdata/wireformats/output/OutputProperties;
    sget-object v1, Lcom/google/gdata/data/media/GDataContentHandler;->threadOutputProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 148
    return-object v0
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 10
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/google/gdata/data/media/GDataContentHandler;->getThreadInputProperties()Lcom/google/gdata/wireformats/input/InputProperties;

    move-result-object v4

    .line 191
    .local v4, "inputProperties":Lcom/google/gdata/wireformats/input/InputProperties;
    new-instance v3, Lcom/google/gdata/util/ContentType;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    .line 192
    .local v3, "contentType":Lcom/google/gdata/util/ContentType;
    invoke-interface {v4}, Lcom/google/gdata/wireformats/input/InputProperties;->getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;

    move-result-object v7

    .line 193
    .local v7, "altRegistry":Lcom/google/gdata/wireformats/AltRegistry;
    invoke-virtual {v7, v3}, Lcom/google/gdata/wireformats/AltRegistry;->lookupType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v6

    .line 194
    .local v6, "altFormat":Lcom/google/gdata/wireformats/AltFormat;
    invoke-virtual {v7, v6}, Lcom/google/gdata/wireformats/AltRegistry;->getParser(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/input/InputParser;

    move-result-object v1

    .line 195
    .local v1, "parser":Lcom/google/gdata/wireformats/input/InputParser;, "Lcom/google/gdata/wireformats/input/InputParser<*>;"
    if-nez v1, :cond_0

    .line 196
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid multipart content: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v4}, Lcom/google/gdata/wireformats/input/InputProperties;->getRootType()Ljava/lang/Class;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/data/media/GDataContentHandler;->parseAtom(Lcom/google/gdata/wireformats/input/InputParser;Ljava/io/InputStream;Lcom/google/gdata/util/ContentType;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 202
    :catch_0
    move-exception v9

    .line 203
    .local v9, "se":Lcom/google/gdata/util/ServiceException;
    new-instance v8, Ljava/io/IOException;

    const-string v0, "Error parsing content"

    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 204
    .local v8, "ioe":Ljava/io/IOException;
    invoke-virtual {v8, v9}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 205
    throw v8
.end method

.method public getTransferData(Ljava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 2
    .param p1, "df"    # Ljava/awt/datatransfer/DataFlavor;
    .param p2, "ds"    # Ljavax/activation/DataSource;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No DataFlavor support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTransferDataFlavors()[Ljava/awt/datatransfer/DataFlavor;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No DataFlavor support"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const-string v5, "obj"

    invoke-static {p1, v5}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static {}, Lcom/google/gdata/data/media/GDataContentHandler;->getThreadOutputProperties()Lcom/google/gdata/wireformats/output/OutputProperties;

    move-result-object v4

    .line 233
    .local v4, "outputProperties":Lcom/google/gdata/wireformats/output/OutputProperties;
    invoke-interface {v4}, Lcom/google/gdata/wireformats/output/OutputProperties;->getAltRegistry()Lcom/google/gdata/wireformats/AltRegistry;

    move-result-object v1

    .line 234
    .local v1, "altRegistry":Lcom/google/gdata/wireformats/AltRegistry;
    new-instance v2, Lcom/google/gdata/util/ContentType;

    invoke-direct {v2, p2}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    .line 235
    .local v2, "contentType":Lcom/google/gdata/util/ContentType;
    invoke-virtual {v1, v2}, Lcom/google/gdata/wireformats/AltRegistry;->lookupType(Lcom/google/gdata/util/ContentType;)Lcom/google/gdata/wireformats/AltFormat;

    move-result-object v0

    .line 236
    .local v0, "altFormat":Lcom/google/gdata/wireformats/AltFormat;
    invoke-virtual {v1, v0}, Lcom/google/gdata/wireformats/AltRegistry;->getGenerator(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/wireformats/output/OutputGenerator;

    move-result-object v3

    .line 237
    .local v3, "generator":Lcom/google/gdata/wireformats/output/OutputGenerator;, "Lcom/google/gdata/wireformats/output/OutputGenerator<*>;"
    if-nez v3, :cond_0

    .line 238
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to generate media: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 241
    :cond_0
    new-instance v5, Lcom/google/gdata/data/media/GDataContentHandler$4;

    invoke-direct {v5, p0, v4, v0}, Lcom/google/gdata/data/media/GDataContentHandler$4;-><init>(Lcom/google/gdata/data/media/GDataContentHandler;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/wireformats/AltFormat;)V

    invoke-direct {p0, v3, p3, v5, p1}, Lcom/google/gdata/data/media/GDataContentHandler;->generateAtom(Lcom/google/gdata/wireformats/output/OutputGenerator;Ljava/io/OutputStream;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V

    .line 248
    return-void
.end method
