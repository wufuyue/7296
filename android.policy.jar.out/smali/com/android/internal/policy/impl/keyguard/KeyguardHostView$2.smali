.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->numWidgets()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setAddWidgetEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)V

    .line 431
    :cond_0
    return-void
.end method

.method public onRemoveView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->numWidgets()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setAddWidgetEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;Z)V

    .line 438
    :cond_0
    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onUserActivityTimeoutChanged()V

    .line 424
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->userActivity()V

    .line 419
    return-void
.end method
