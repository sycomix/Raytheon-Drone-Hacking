.class Ljavax/mail/Session$1;
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
    .line 869
    iput-object p1, p0, Ljavax/mail/Session$1;->this$0:Ljavax/mail/Session;

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
    .line 870
    iget-object v0, p0, Ljavax/mail/Session$1;->this$0:Ljavax/mail/Session;

    invoke-static {v0, p1}, Ljavax/mail/Session;->access$000(Ljavax/mail/Session;Ljava/io/InputStream;)V

    .line 871
    return-void
.end method
