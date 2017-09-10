.class interface abstract Lcom/google/gdata/client/uploader/UrlConnectionFactory;
.super Ljava/lang/Object;
.source "UrlConnectionFactory.java"


# static fields
.field public static final DEFAULT:Lcom/google/gdata/client/uploader/UrlConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/gdata/client/uploader/UrlConnectionFactory$1;

    invoke-direct {v0}, Lcom/google/gdata/client/uploader/UrlConnectionFactory$1;-><init>()V

    sput-object v0, Lcom/google/gdata/client/uploader/UrlConnectionFactory;->DEFAULT:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    return-void
.end method


# virtual methods
.method public abstract create(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
