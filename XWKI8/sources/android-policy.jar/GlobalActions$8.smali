.class Lcom/android/internal/policy/impl/GlobalActions$8;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;II)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0


# Replaced for new Power Menu Element (Reboot)
#    const/4 v1, 0x1
#    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    const/4 v1, 0x1
	
    const-string v2, "now"
	
    invoke-static {v0, v2, v1}, Lcom/android/internal/app/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 268
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method
