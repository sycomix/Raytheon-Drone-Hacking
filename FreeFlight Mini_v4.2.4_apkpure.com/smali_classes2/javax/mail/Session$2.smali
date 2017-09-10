.class Ljavax/mail/Session$2;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljavax/mail/StreamLoader;


# instance fields
.field private final this$0:Ljavax/mail/Session;


# direct methods
.method constructor <init>(Ljavax/mail/Session;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    iput-object p1, p0, Ljavax/mail/Session$2;->this$0:Ljavax/mail/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    iget-object v0, p0, Ljavax/mail/Session$2;->this$0:Ljavax/mail/Session;

    invoke-static {v0}, Ljavax/mail/Session;->access$100(Ljavax/mail/Session;)Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1001
    return-void
.end method
