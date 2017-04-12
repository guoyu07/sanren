<?php if (!defined('THINK_PATH')) exit();?><!-- 对话框HTML -->
<div class="modal fade message-box" id="message-box">
    <div class="modal-dialog" style="width: 900px;">
        <div class="modal-content" style="width: 900px;height: 700px;">

            <div id="message-content-box" class="message-content">
                <div class="top">
                    通知
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">关闭</span></button>
                </div>
                <div class="content-list">
                    <ul class="session-list"><!--类型列表-->
                        <div class="os-loading5 os-loading spinner">
                            <div class="dot1" style="background-color:#19bca1"></div>
                            <div class="dot2" style="background-color:#19bca1"></div>
                        </div>
                    </ul>
                    <div class="message-list"><!--消息列表--></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        message_session.init_message();
    });
</script>