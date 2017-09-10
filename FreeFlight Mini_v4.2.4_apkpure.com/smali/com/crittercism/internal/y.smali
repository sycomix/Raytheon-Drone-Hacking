.class public final Lcom/crittercism/internal/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/net/SocketImplFactory;


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/crittercism/internal/e;

.field private c:Lcom/crittercism/internal/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/crittercism/internal/y;->a:Z

    return-void
.end method

.method private constructor <init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/crittercism/internal/y;->b:Lcom/crittercism/internal/e;

    .line 67
    iput-object p2, p0, Lcom/crittercism/internal/y;->c:Lcom/crittercism/internal/d;

    .line 68
    return-void
.end method

.method public static a(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/crittercism/internal/y;->a:Z

    if-eqz v0, :cond_0

    .line 27
    sget-boolean v0, Lcom/crittercism/internal/y;->a:Z

    .line 41
    :goto_0
    return v0

    .line 30
    :cond_0
    new-instance v0, Lcom/crittercism/internal/y;

    invoke-direct {v0, p0, p1}, Lcom/crittercism/internal/y;-><init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V

    .line 34
    :try_start_0
    invoke-virtual {v0}, Lcom/crittercism/internal/y;->createSocketImpl()Ljava/net/SocketImpl;

    .line 35
    invoke-static {v0}, Ljava/net/Socket;->setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const/4 v0, 0x1

    .line 41
    sput-boolean v0, Lcom/crittercism/internal/y;->a:Z

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/crittercism/internal/y;->a:Z

    goto :goto_0
.end method


# virtual methods
.method public final createSocketImpl()Ljava/net/SocketImpl;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/crittercism/internal/x;

    iget-object v1, p0, Lcom/crittercism/internal/y;->b:Lcom/crittercism/internal/e;

    iget-object v2, p0, Lcom/crittercism/internal/y;->c:Lcom/crittercism/internal/d;

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/x;-><init>(Lcom/crittercism/internal/e;Lcom/crittercism/internal/d;)V

    return-object v0
.end method
