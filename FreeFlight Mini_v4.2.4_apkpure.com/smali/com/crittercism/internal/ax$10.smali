.class final Lcom/crittercism/internal/ax$10;
.super Lcom/crittercism/internal/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crittercism/internal/c;

.field final synthetic b:Lcom/crittercism/internal/ax;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ax;Lcom/crittercism/internal/c;)V
    .locals 0

    .prologue
    .line 883
    iput-object p1, p0, Lcom/crittercism/internal/ax$10;->b:Lcom/crittercism/internal/ax;

    iput-object p2, p0, Lcom/crittercism/internal/ax$10;->a:Lcom/crittercism/internal/c;

    invoke-direct {p0}, Lcom/crittercism/internal/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/crittercism/internal/ax$10;->b:Lcom/crittercism/internal/ax;

    .line 1091
    iget-object v0, v0, Lcom/crittercism/internal/ax;->j:Lcom/crittercism/internal/bq;

    .line 885
    iget-object v1, p0, Lcom/crittercism/internal/ax$10;->a:Lcom/crittercism/internal/c;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/bq;->a(Lcom/crittercism/internal/cf;)Z

    .line 886
    return-void
.end method
