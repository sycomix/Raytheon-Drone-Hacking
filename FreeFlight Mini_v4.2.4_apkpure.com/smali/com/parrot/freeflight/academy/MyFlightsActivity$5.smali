.class Lcom/parrot/freeflight/academy/MyFlightsActivity$5;
.super Ljava/lang/Object;
.source "MyFlightsActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/MyFlightsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity$5;->this$0:Lcom/parrot/freeflight/academy/MyFlightsActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->access$600(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    .line 172
    return-void
.end method
