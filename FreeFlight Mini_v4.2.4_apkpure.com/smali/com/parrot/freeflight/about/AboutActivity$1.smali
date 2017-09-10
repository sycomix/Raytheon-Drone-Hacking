.class Lcom/parrot/freeflight/about/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/about/AboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/about/AboutActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/about/AboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/about/AboutActivity;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/parrot/freeflight/about/AboutActivity$1;->this$0:Lcom/parrot/freeflight/about/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/about/AboutActivity$1;->this$0:Lcom/parrot/freeflight/about/AboutActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/about/AboutActivity;->access$000(Lcom/parrot/freeflight/about/AboutActivity;)V

    .line 56
    return-void
.end method
