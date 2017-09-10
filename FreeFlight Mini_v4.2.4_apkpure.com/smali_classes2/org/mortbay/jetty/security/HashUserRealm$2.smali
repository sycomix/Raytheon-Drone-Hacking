.class Lorg/mortbay/jetty/security/HashUserRealm$2;
.super Ljava/lang/Object;
.source "HashUserRealm.java"

# interfaces
.implements Lorg/mortbay/util/Scanner$BulkListener;


# instance fields
.field private final this$0:Lorg/mortbay/jetty/security/HashUserRealm;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/security/HashUserRealm;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lorg/mortbay/jetty/security/HashUserRealm$2;->this$0:Lorg/mortbay/jetty/security/HashUserRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filesChanged(Ljava/util/List;)V
    .locals 2
    .param p1, "filenames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 412
    if-nez p1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/HashUserRealm$2;->this$0:Lorg/mortbay/jetty/security/HashUserRealm;

    invoke-static {v1}, Lorg/mortbay/jetty/security/HashUserRealm;->access$300(Lorg/mortbay/jetty/security/HashUserRealm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lorg/mortbay/jetty/security/HashUserRealm$2;->this$0:Lorg/mortbay/jetty/security/HashUserRealm;

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/HashUserRealm;->loadConfig()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    const-string v0, "HashUserRealm$Scanner"

    return-object v0
.end method
