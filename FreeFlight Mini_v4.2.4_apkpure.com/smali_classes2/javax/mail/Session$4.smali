.class Ljavax/mail/Session$4;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# instance fields
.field private final val$c:Ljava/lang/Class;

.field private final val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1192
    iput-object p1, p0, Ljavax/mail/Session$4;->val$c:Ljava/lang/Class;

    iput-object p2, p0, Ljavax/mail/Session$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1193
    iget-object v0, p0, Ljavax/mail/Session$4;->val$c:Ljava/lang/Class;

    iget-object v1, p0, Ljavax/mail/Session$4;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
