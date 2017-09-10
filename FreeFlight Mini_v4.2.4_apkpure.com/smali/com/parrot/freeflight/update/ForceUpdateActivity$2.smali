.class Lcom/parrot/freeflight/update/ForceUpdateActivity$2;
.super Ljava/lang/Object;
.source "ForceUpdateActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/update/ForceUpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/update/ForceUpdateActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/update/ForceUpdateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/update/ForceUpdateActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity$2;->this$0:Lcom/parrot/freeflight/update/ForceUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/parrot/freeflight/update/ForceUpdateActivity$2;->this$0:Lcom/parrot/freeflight/update/ForceUpdateActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->access$000(Lcom/parrot/freeflight/update/ForceUpdateActivity;)V

    .line 69
    return-void
.end method
