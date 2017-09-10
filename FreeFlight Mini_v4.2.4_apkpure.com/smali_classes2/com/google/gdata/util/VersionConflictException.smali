.class public Lcom/google/gdata/util/VersionConflictException;
.super Lcom/google/gdata/util/ServiceException;
.source "VersionConflictException.java"


# instance fields
.field private currentEntry:Lcom/google/gdata/data/IEntry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "Version conflict"

    invoke-direct {p0, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/util/VersionConflictException;->currentEntry:Lcom/google/gdata/data/IEntry;

    .line 38
    const/16 v0, 0x199

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/VersionConflictException;->setHttpErrorCodeOverride(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/IEntry;)V
    .locals 1
    .param p1, "currentEntry"    # Lcom/google/gdata/data/IEntry;

    .prologue
    .line 42
    const-string v0, "Version conflict"

    invoke-direct {p0, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/google/gdata/util/VersionConflictException;->currentEntry:Lcom/google/gdata/data/IEntry;

    .line 44
    const/16 v0, 0x199

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/VersionConflictException;->setHttpErrorCodeOverride(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/IEntry;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "currentEntry"    # Lcom/google/gdata/data/IEntry;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    const-string v0, "Version conflict"

    invoke-direct {p0, v0, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    iput-object p1, p0, Lcom/google/gdata/util/VersionConflictException;->currentEntry:Lcom/google/gdata/data/IEntry;

    .line 50
    const/16 v0, 0x199

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/VersionConflictException;->setHttpErrorCodeOverride(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 60
    const/16 v0, 0x199

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/VersionConflictException;->setHttpErrorCodeOverride(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/google/gdata/util/ErrorDomain$ErrorCode;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/util/ServiceException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    .line 66
    const/16 v0, 0x199

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/VersionConflictException;->setHttpErrorCodeOverride(I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "httpConn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/net/HttpURLConnection;)V

    .line 56
    return-void
.end method


# virtual methods
.method public generate(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlWriter;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "xw"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/gdata/util/VersionConflictException;->currentEntry:Lcom/google/gdata/data/IEntry;

    invoke-static {p2, v0, p1}, Lcom/google/gdata/util/GenerateUtil;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 94
    return-void
.end method

.method public getCurrentEntry()Lcom/google/gdata/data/IEntry;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/gdata/util/VersionConflictException;->currentEntry:Lcom/google/gdata/data/IEntry;

    return-object v0
.end method

.method public setCurrentEntry(Lcom/google/gdata/data/IEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/google/gdata/data/IEntry;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/gdata/util/VersionConflictException;->currentEntry:Lcom/google/gdata/data/IEntry;

    return-void
.end method
